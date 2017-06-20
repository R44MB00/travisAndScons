# -*- coding: utf-8 -*-
"""Command Handler

This module provides methods to execute commands and work with their
output and exit codes.

"""

import subprocess


def run_cmd(lint_cmd, fname):
    """Fn to exec a command. Fn runs the command lint_cmd and passes it
       fname file path. Fn return the command exit code.

    Args:
        lint_cmd (list): lint command to exec.
        fname  (string): path to file.

    Returns:
        Int: out_lint. 0 if success.

    """

    # Init return var
    out_lint = 1
    # Append file path to cmd
    str_fname = str(fname)
    lint_cmd.append(str_fname)
    try:
        out_lint = subprocess.call(lint_cmd, shell=False)
    # Handle Errors
    except OSError as oerr:
        print "OSError > ", oerr.errno, " - ", oerr.strerror
    # Return exit code
    return out_lint
