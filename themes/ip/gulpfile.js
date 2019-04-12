var gulp = require("gulp"),
  sass = require("gulp-sass"),
  rename = require("gulp-rename");

gulp.task("scss", function() {
  return gulp
    .src("src/scss/style.scss")
    .pipe(
      sass({
        outputStyle: "compressed"
      })
    )
    .pipe(rename("style.min.css"))
    .pipe(gulp.dest("assets/css"));
});

// Watch asset folder for changes
gulp.task("watch", function() {
  return gulp.watch("src/scss/**/*", gulp.series(["scss"]));
})

gulp.task("default", gulp.series("watch"))
