# -*- coding: utf-8 -*-
"""Builder for all folders

This module provides the builder function for all folders.

"""

import os
import os.path
import time
from datetime import date
import request_session
import all_linters


def check_whitelist(target_dir):
    """Fn to check whitelist. Fn reads contents of site_scons/whitelist.txt
       into a list and check if the target_dir in in the whitelist.

    Args:
        target_dir (string): domain name of LINK.txt file.

    Returns:
        Bool: True. If target_dir is in whitelist.

    """

    # Link white list
    white_file = 'site_scons/whitelist.txt'
    in_list = False
    # Read whitelist into list
    with open(white_file) as whitef:
        for line in whitef:
            # strip comments
            comment_i = line.find("#")
            clean_line = line[:comment_i].strip()
            clean_len = len(clean_line)
            if clean_len > 0 and clean_line in target_dir:
                in_list = True
    # Return answer
    return in_list


def check_link(chal_link, target_dir):
    """Fn to check LINK.txt files. Fn checks the whitelist and if item is not
       present it makes the request to the chal_link, gets the http status
       code and checks for a 200ok.

    Args:
        chal_link  (string) : url to challenge.
        target_dir (string) : target dir to check in whitelist.

    Returns:
        Bool: True. If 200ok.

    """

    # Init valid_resp
    valid_resp = 1
    # Check whitelist
    white_list = check_whitelist(str(target_dir))
    if not white_list:
        # Get HTTP Status code
        stat_code = request_session.get_code(chal_link)
        # Check for valid response
        if stat_code != 200:
            # Exit build with error 1
            print chal_link + " Stat Code not 200 - " + str(stat_code)
        else:
            # 200 ok
            print str(stat_code)
            # Valid response
            valid_resp = 0
    else:
        # whitelist item
        valid_resp = 0
    # Return answer
    return valid_resp


def lang_linters(fname):
    """Fn to check coding standars on differents languages. Fn checks the
       file extention and call the corresponding linter.

    Args:
        fname (string) : path to file.

    Returns:
        Int: 0. If success.

    """

    # Init linter config
    pylint_conf = ["py lint", ["pylint", "flake8"]]
    rblint_conf = ["ruby lint", ["ruby-lint"]]
    clint_conf = ["c lang lint", ["splint"]]
    jslint_conf = ["js lint", ["gjslint"]]
    shlint_conf = ["sh lint", ["shellcheck"]]
    jvlint_conf = ["java lint", ["java -jar site_scons/resources/"
                                 "checkstyle-6.15-all.jar -c "
                                 "/sun_checks.xml"]]
    default_conf = ["skp"]
    # Init lint vars
    lint_vars = {"py": pylint_conf, "rb": rblint_conf,
                 "c": clint_conf, "js": jslint_conf,
                 "sh": shlint_conf, "java": jvlint_conf}
    # Extract ext
    fname_ext = os.path.splitext(fname.rstr())[1].translate(None, '.')
    # Get lint params
    lint_params = lint_vars.get(fname_ext, default_conf)
    # Call linter
    lint_result = all_linters.generic_linter(lint_params, fname)
    # Return result
    return lint_result


def build_folders(target, source, env):
    """Fn to build folders. Fn iterates through all files in the folder and
       checks the existence and validity of the LINK file and runs the linters
       on the different files based on their extention.

    Args:
        target    (list): Path to target file.
        source    (list): Path to source file (OTHERS.txt containing URLs).
        env  (SCons.Env): SCons environment from SConstruct.

    Returns:
        Int: 1. For build error.
             0. For successfull build.

    """

    # builder creation date
    born_unix = time.mktime(date(2017, 06, 19).timetuple())
    # Prep directory location
    target_dir = os.path.dirname(str(target[0]))
    target_dir = env.Dir(target_dir)
    target_f = env.File(str(target[0]))
    # Make and open target file to write
    target_file = open(str(target_f), 'w')
    # Init folder build vars
    link_build = 1
    lint_build = 0
    link_exist = False
    # Iterate through folder
    for fname in source:
        # Get file last mod date
        fdate = os.path.getmtime(fname.rstr())
        # Check LINK.txt files
        if os.path.basename(fname.rstr()) == "LINK.txt":
            link_exist = True
            chal_link = str(fname.get_contents())
            link_build = check_link(chal_link, target_dir)
            if link_build == 0:
                target_file.write(chal_link + "- 200" + "\n")
        # Only check files created after builder
        elif fdate > born_unix:
            # Run lang linters
            lint_build = lang_linters(fname)
            if lint_build[0] == 0:
                target_file.write(str(fname) + lint_build[1] + ": success \n")
            else:
                # Linter failed
                exit_code = str(lint_build[0])
                print lint_build[1] + " Failed - exit code: " + exit_code
                # Exit build with errors
                return 1
        else:
            # Omit build for old files
            target_file.write(fname.rstr() + "OLD - omiting linter \n")
    # Close file
    target_file.close()
    target_f = env.File(target_file)
    # Check LINK.txt exist
    if not link_exist:
        print target_file.name[:-10], " - LINK file does not exist - "
        return 1
    # Exit successful build
    return 0
