# -*- coding: utf-8 -*-
"""Builder for OTHERS.txt files

This module provides the builder function for all OTHERS.txt files.

"""

import string
import request_session


def build_others(target, source, env):
    """Fn to build OTHERS.txt. Fn makes a request to all URLs in the text file
       and gets the HTTP status code. It creates a new target file with all
       URLs and their respective HTTP status code. All status code 200 ok are
       valid.

    Args:
        target    (list): Path to target file.
        source    (list): Path to source file (OTHERS.txt containing URLs).
        env  (SCons.Env): SCons environment from SConstruct.

    Returns:
        Int: 1. For build error.
             0. For successfull build.

    """

    # Get urls in OTHERS
    cont_arr = string.split(env.File(source[0]).get_contents(), '\n')
    cont_arr = [x.strip() for x in cont_arr]
    # Prep directory location
    target_dir = str(target[0])[:-10]
    target_dir = env.Dir(target_dir)
    target_f = env.File(str(target[0]))
    # Make and open target file to write
    target_file = open(str(target_f), 'w')
    # Iterate through urls
    for url in cont_arr:
        stat_code = 0
        ur_len = len(url)
        if ur_len > 0:
            stat_code = request_session.get_code(url)
            # Check for valid response
            if stat_code != 200:
                # Exit build with error 1
                print url + " - " + str(stat_code) + " Status Code not 200"
                return 1
            else:
                # 200 ok
                # print url + " - " + str(stat_code)
                # Append result to target file
                target_file.write(url + " - " + str(stat_code) + "\n")
    # Close file
    target_file.close()
    target_f = env.File(target_file)
    # Print file build success
    # print "ok "
    return 0
