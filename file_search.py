# -*- coding: utf-8 -*-
"""Recursive Directory Search

This module provides functionalities that facilitate the recursive search of
files based on a specific extention.

"""

import os
import fnmatch


def find_sources(ext, mode, directory='challenges/'):
    """Fn to find sources based on an ext under the default dir, challenges.

    Args:
        ext       (string): Extention of desired files.
        mode      (int)   : 0 for any file name with desired ext. 1 for OTHERS.
        directory (string): Default dir 'challenges/'.

    Returns:
        List: matches[]. Contains list of file names with desired ext.

    """

    matches = []
#   iterate through dirs and append to matches
    for root, _, filenames in os.walk(directory):
        if mode == 0:
            for filename in fnmatch.filter(filenames, '*.' + ext):
                matches.append(os.path.join(root, filename))
        else:
            for filename in fnmatch.filter(filenames, 'OTHERS.' + ext):
                matches.append(os.path.join(root, filename))

    return matches
