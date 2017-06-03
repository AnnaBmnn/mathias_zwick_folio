// Dependencies
var gulp        = require( 'gulp' ),
    gulp_stylus = require( 'gulp-stylus' ),
	imagemin    = require('gulp-imagemin');

// CSS task
gulp.task( 'css', function()
{
    gulp.src( './web/dest/stylus/main.styl' )   // main.styl as input
        .pipe( gulp_stylus({ compress:true }) )             // Convert to CSS
        .pipe( gulp.dest( './web/ressources/css' ) ); // Put it in CSS folder
} );

//Image min task
gulp.task( 'img-min', function()
{
    gulp.src( './web/dest/img/*/*' )   
        .pipe( imagemin() )
        .pipe( gulp.dest('./web/ressources/img') )
} );
Ò
// Watch task
gulp.task( 'watch', function()
{
    gulp.watch( './web/dest/stylus/**', [ 'css' ] );
} );

// Default task (CSS + watch)
gulp.task( 'default', [ 'css', 'watch' ] );