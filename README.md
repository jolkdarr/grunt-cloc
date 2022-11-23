# grunt-cloc

> cloc launch utility.

Cloc tool is hosted at https://github.com/AlDanial/cloc.

## Getting Started
This plugin requires Grunt.

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide,
as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar
with that process, you may install this plugin with this command:

```shell
npm install grunt-cloc --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-cloc');
```

## The "cloc" task

### Overview
In your project's Gruntfile, add a section named `cloc` to the data object passed into `grunt.initConfig()`. The section `cloc` may contain one or more targets.

```js
grunt.initConfig({
    cloc: {
        target: {
            options: [
                // options go there
            ],
            src: [
                // filepaths go there
            ]
        },
        another_target: {
            options: [
                // options go there
            ],
            src: [
                // filepaths go there
            ]
        }
    }
});
```

### Options

See [CLOC documentation](https://github.com/AlDanial/cloc#options).

### Usage Example

```js
grunt.initConfig({
    cloc: {
        without_html_css: {
            options: ["--exclude-lang=HTML,CSS", "--exclude-dir=node_modules"],
            src: ["."]
        },
        without_html: {
            options: ["--exclude-lang=HTML"],
            src: ["."]
        }
    }
});
```

## Release History
* _0.0.1_ First release.
* _0.0.2_ `package.json` fixed.

## License
Copyright (c) 2022 B. Djoudi. Licensed under the MIT license.
