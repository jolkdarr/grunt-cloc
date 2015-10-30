###
# grunt-cloc
#
# Copyright (c) 2015 B. Djoudi (jolkdarr@netscape.net)
# Licensed under the MIT license.
###
'use strict'

module.exports = (grunt) ->
  require 'shelljs/global'

  # Please see the Grunt documentation for more information regarding task
  # creation: http://gruntjs.com/creating-tasks
  grunt.registerTask 'cloc', 'cloc launch utility.', ->
    targets = grunt.config.get('cloc')
    for key of targets
      if targets.hasOwnProperty(key)
        # get target:
        target = targets[key]

        # read options:
        options = ''
        target.options.forEach (o) -> options += ' ' + o
        grunt.log.writeln 'options:' + grunt.util.linefeed + options

        # read files:
        files = ''
        target.src.forEach (f) -> files += ' ' + f
        grunt.log.writeln 'processing filepath: ' + files

        # run cloc:
        if exec('cloc' + options + ' ' + files).code != 0
          grunt.log.error 'error: cloc failed'
          exit 1
