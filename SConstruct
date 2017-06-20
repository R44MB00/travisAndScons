# -*- coding: utf-8 -*-

import os
import file_search
import itertools
import others_builder
import gherkin_builder
import folders_builder

# Guarantee scons version
EnsureSConsVersion(2, 3)

# Build default construction environment
env = Environment()

# Set external variables
env['ENV']['PATH'] = os.environ['PATH']
env['ENV']['HOME'] = os.environ['HOME']

# Set signature
env.Decider('MD5-timestamp')

# Dissable python warnings
env['ENV']['PYTHONWARNINGS'] = 'ignore'

# File change cache location
env.SConsignFile('build/decider')
env.CacheDir('build/build_cache')

# Find all required sources
#cpp_sources = fileSearch.find_sources('cpp', 0)
#cs_sources = fileSearch.find_sources('cs', 0)
#java_sources = fileSearch.find_sources('java', 0)
#js_sources = fileSearch.find_sources('js', 0)
#py_sources = fileSearch.find_sources('py', 0)
#rb_sources = fileSearch.find_sources('rb', 0)
#sh_sources = fileSearch.find_sources('sh', 0)
gherkin_sources = file_search.find_sources('feature', 0)
others_sources = file_search.find_sources('txt', 1)
folder_sources = file_search.find_folders()

# Prep OTHERS targets
others_targets = others_sources
others_targets = [ot.replace('challenges', 'build') for ot in others_targets]
# Prep Gherkin targets
gherkin_targets = gherkin_sources
gherkin_targets = [gt.replace('challenges', 'build') for gt in gherkin_targets]
# Prep Folder targets
folder_tmps = folder_sources
folder_targets = []
for ft in folder_tmps:
    dir_path = os.path.dirname(os.path.realpath(ft[0]))
    dir_path = dir_path.replace('challenges', 'build')
    dir_path += "/folder.txt"
    folder_targets.append(dir_path)

# Builder - OTHERS
bothers_builder = Builder(action = others_builder.build_others)
env.Append(BUILDERS = {'Bothers' : bothers_builder})
for sr, tg in itertools.izip(others_sources, others_targets):
    bothers_run = env.Bothers(target = tg, source = sr)
env.Alias('others', others_targets)

# Builder - Gherkin
bgherkin_builder = Builder(action = gherkin_builder.build_gherkin)
env.Append(BUILDERS = {'Bgherkin' : bgherkin_builder})
for sr, tg in itertools.izip(gherkin_sources, gherkin_targets):
    gherkin_run = env.Bgherkin(target = tg, source = sr)
env.Alias('gherkin', gherkin_targets)

# Builder - Folders
bfolders_builder = Builder(action = folders_builder.build_folders)
env.Append(BUILDERS = {'Bfolders' : bfolders_builder})
for sr, tg in itertools.izip(folder_sources, folder_targets):
    bfolders_run = env.Bfolders(target = tg, source = sr)
env.Alias('folders', folder_targets)

# Enable explicit builds only
Default(None)
