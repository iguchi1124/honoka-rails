var gulp = require('gulp');
var clean = require('gulp-clean');

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
});
