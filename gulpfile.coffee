gulp = require 'gulp'
clean = require 'gulp-clean'
rename = require 'gulp-rename'

gulp.task 'clean', ->
  gulp.src('assets').pipe clean(force: true)

gulp.task 'copy', ->
  gulp.src([ 'bower_components/bootstrap-sass/assets/**/*' ])
    .pipe gulp.dest('assets')

  gulp.src([ 'bower_components/Honoka/scss/honoka/*' ])
    .pipe gulp.dest('assets/stylesheets/honoka')

  gulp.src('bower_components/Honoka/scss/bootstrap.scss')
    .pipe rename('_honoka.scss')
    .pipe gulp.dest('assets/stylesheets/')
