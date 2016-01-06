var gulp = require('gulp');
var clean = require('gulp-clean');
var rename = require("gulp-rename");

gulp.task('clean', function () {
  gulp.src('assets').pipe(clean({ force: true }));
});

gulp.task('copy', function() {
  gulp.src(
    ['bower_components/bootstrap-sass/assets/**/*']
  ).pipe(gulp.dest('assets'));

  gulp.src(
    ['bower_components/Honoka/scss/honoka/*']
  ).pipe(gulp.dest('assets/stylesheets/honoka'));

  gulp.src('bower_components/Honoka/scss/bootstrap.scss')
    .pipe(rename('_honoka.scss'))
    .pipe(gulp.dest('assets/stylesheets/'));
});
