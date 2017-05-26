# -*- coding: utf-8 -*-

import os
import file_search
import itertools
import others_builder

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
#env.CacheDir('build/build_cache')

# Find all required sources
#cpp_sources = fileSearch.find_sources('cpp', 0)
#cs_sources = fileSearch.find_sources('cs', 0)
#java_sources = fileSearch.find_sources('java', 0)
#js_sources = fileSearch.find_sources('js', 0)
#py_sources = fileSearch.find_sources('py', 0)
#rb_sources = fileSearch.find_sources('rb', 0)
#sh_sources = fileSearch.find_sources('sh', 0)
others_sources = file_search.find_sources('txt', 1)

# Prep targets
others_targets = others_sources
others_targets = [ot.replace('challenges', 'build') for ot in others_targets]

# Builder - OTHERS
bothers_builder = Builder(action = others_builder.build_others)
env.Append(BUILDERS = {'BOthers' : bothers_builder})
for sr, tg in itertools.izip(others_sources, others_targets):
    bothers_run = env.BOthers(target = tg, source = sr)


