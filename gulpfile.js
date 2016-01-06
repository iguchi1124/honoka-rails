var gulp = require('gulp');
var clean = require('gulp-clean');

gulp.task('clean', function () {
  gulp.src('app/assets').pipe(clean({ force: true }));
});

gulp.task('copy', function() {
  gulp.src(
    ['bower_components/bootstrap-sass/assets/**/*']
  ).pipe(gulp.dest('app/assets'));

  gulp.src(
    ['bower_components/Honoka/scss/honoka/*']
  ).pipe(gulp.dest('app/assets/stylesheets/honoka'));
});
