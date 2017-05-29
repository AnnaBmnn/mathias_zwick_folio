// Dependencies
var gulp        = require( 'gulp' ),
    gulp_stylus = require( 'gulp-stylus' );

// CSS task
gulp.task( 'css', function()
{
    gulp.src( './web/ressources/stylus/main.styl' )   // main.styl as input
        .pipe( gulp_stylus() )             // Convert to CSS
        .pipe( gulp.dest( './web/ressources/css' ) ); // Put it in CSS folder
} );

// Watch task
gulp.task( 'watch', function()
{
    gulp.watch( './web/ressources/stylus/**', [ 'css' ] );
} );

// Default task (CSS + watch)
gulp.task( 'default', [ 'css', 'watch' ] );