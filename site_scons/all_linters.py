# -*- coding: utf-8 -*-
"""Linter Handler

This module provides linters to check different languages and coding
standards.

"""

import command_handler


def generic_linter(param_list, fname):
    """Fn to run generic linter. Fn runs the linter based on the given
       params and file fname.

    Args:
        param_list (list): List with lint out message and command.
        fname    (string): path to js file.

    Returns:
        List: build_result. [0] out_msg, [1] exit_code.

    """

    # Init return var
    build_result = []
    exit_code = 0
    if param_list[0] != "skp":
        # Set out msg
        out_msg = param_list[0]
        # Set command
        cmd_list = param_list[1]
        # Iterate through all commands
        for cmd in cmd_list:
            lint_cmd = cmd.split()
            out_lint = command_handler.run_cmd(lint_cmd, fname)
            exit_code += abs(out_lint)
    else:
        out_lint = 0
        out_msg = "Linter not yet implemented"
    # Prep result
    build_result.append(out_lint)
    build_result.append(out_msg)
    # Return exit code
    return build_result
