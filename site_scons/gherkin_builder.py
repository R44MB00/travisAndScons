# -*- coding: utf-8 -*-
"""Builder for *.feature files

This module provides the builder function for all .feature files.

"""

import subprocess
import os


def build_gherkin(target, source, env):
    """Fn to build all files written in gherkin using cucumber. Fn passes file
       to cucumber and creates a new target file in case of success with the
       path to the file and the word 'Success'.

    Args:
        target    (list): Path to target file.
        source    (list): Path to source file (OTHERS.txt containing URLs).
        env  (SCons.Env): SCons environment from SConstruct.

    Returns:
        Int: 1. For build error.
             0. For successfull build.

    """

    # Prep cucumber command
    cucu_cmd = "cucumber -f progress -q -m -s "
    cucu_part = cucu_cmd.split()
    cucu_part.append(str(source[0]))
    # Prep directory location
    target_dir = os.path.dirname(str(target[0]))
    target_dir = env.Dir(target_dir)
    target_f = env.File(str(target[0]))
    # Make and open target file to write
    target_file = open(str(target_f), 'w')
    try:
        # Call cucumber on source file
        output = subprocess.call(cucu_part, shell=False)
    # Handle Errors
    except OSError as oerr:
        print "OSError > ", oerr.errno, " - ", oerr.strerror
        return 1
    # Check cucumber output
    if output != 0:
        print "Gherkin build failed -- " + str(output)
        return 1
    else:
        # Cucumber success
        print "Gherkin Success"
        # Append result to target file
        target_file.write(target_file.name + " - Success" + "\n")
    # Close file
    target_file.close()
    target_f = env.File(target_file)
    return 0
