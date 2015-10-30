/*
 * grunt-cloc
 *
 * Copyright (c) 2015 B. Djoudi (jolkdarr@netscape.net)
 * Licensed under the MIT license.
 */

'use strict';

module.exports = function(grunt) {
    // project configuration:
    grunt.initConfig({
        // configuration to be used:
        cloc: {
            plugin: {
                options: ["--exclude-dir=node_modules"],
                src: ["."]
            }
        }
    });

    // actually load this plugin's task(s):
    grunt.loadTasks('tasks');

    // by default, run following task(s):
    grunt.registerTask('default', []);
};
