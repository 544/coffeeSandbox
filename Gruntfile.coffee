module.exports = (grunt) ->

  # Project Config
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    coffee:
      app:
        expand: true
        src: [ 'src/**/*.coffee' ]
        dist: 'lib'
        ext: '.js'
    coffeelint:
      app:
        files:
          src: [
            'Gruntfile.coffee'
            'src/**/*.coffee'
            'test/**/*.coffee'
          ]

    simplemocha:
      all:
        src: [ 'test/**/*.coffee' ]
      options:
        reporter: 'spec'
        ui: 'bdd'
    watch:
      scripts:
        files: [ 'Gruntfile.coffee', 'src/**/*.coffee', 'test/**/*.coffee' ]
        tasks: [ 'simplemocha' ]
        options:
          interrupt: yes

  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-simple-mocha'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default' , [ 'coffee' ]

