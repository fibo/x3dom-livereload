#
# [Gist](https://gist.github.com/fibo/7054215)
#

livereloadPort = 35729

module.exports = (grunt) ->
  grunt.initConfig
    watch:
      index:
        files: ['index.html']
        tasks: []
        options:
          livereload: livereloadPort
    connect:
      server:
        options:
          hostname: '*'
          port: 3000
          livereload: livereloadPort

  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['connect', 'watch']

