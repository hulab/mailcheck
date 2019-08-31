module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json'),
    jshint:
      files: 'src/mailcheck.js'
      options:
        jshintrc: 'jshint.json'

    uglify:
      options:
        banner: '/*! <%= pkg.name %> v<%= pkg.version %> @licence MIT */'
      main:
        files:
          'src/mailcheck.min.js': 'src/mailcheck.js'

  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-jshint'

  grunt.registerTask 'default', ['jshint', 'uglify']
