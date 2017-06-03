<?php 
$config = array();
switch($_SERVER['HTTP_HOST'])
{
	case 'localhost':
	case 'localhost:8080':
	case 'localhost:8888':
		$config['debug'] = false;
		$config['db_host'] = 'localhost';
		$config['db_name'] = 'mathias_zwick';
		$config['db_user'] = 'root';
		$config['db_pass'] = 'root';
		break;
}

// Require dependendies
$loader = require_once __DIR__.'/../vendor/autoload.php';
$loader->addPsr4('Site\\', __DIR__.'/../site/src/');

// Init Silex
$app = new Silex\Application();
$app['config'] = $config;
$app['debug'] = false;

// Services
$app->register(new Silex\Provider\TwigServiceProvider(), array(
    'twig.path' => __DIR__.'/../site/views',
));
$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
    'db.options' => array (
        'driver'    => 'pdo_mysql',
        'host'      => $app['config']['db_host'],
        'dbname'    => $app['config']['db_name'],
        'user'      => $app['config']['db_user'],
        'password'  => $app['config']['db_pass'],
        'charset'   => 'utf8'
    ),
));
$app['db']->setFetchMode(PDO::FETCH_OBJ);

// Create routes
$app->get('/', function() use ($app)
{
	$data = array();
	$data['title'] = 'Mathias Zwick';
	$photosSetModel = new Site\Models\PhotosSet($app['db']);
	$data['photosSets'] = $photosSetModel->getPhotoSetsWithPresentationPicture();

    return $app['twig']->render('pages/home.twig', $data);
})
->bind('home');

$app->get('/about', function() use ($app)
{
	$data['title'] = 'about' ;

    return $app['twig']->render('pages/about.twig', $data);
})
->bind('about');

$app->get('/photos-set/{slug}', function($slug) use ($app)
{
	$data = array();	

	$photosSetModel = new Site\Models\PhotosSet($app['db']);
	$photosSet = $photosSetModel->getBySlug($slug);
	$data['photosSet'] = $photosSet ;

	$data['photos'] = $photosSetModel->getAllPhotosByPhotosSet($photosSet->name);

	if(!$data['photos'])
	{
		$app->abort(404);
	}
    return $app['twig']->render('pages/photos-set.twig', $data);

})
->assert('id', '^[a-z0-9-]+$')
->bind('photos-set');

$app->error(function() use ($app){
	if($app['debug']){
		return;
	}
	$data = array();
	$data['title'] = 'Error';
	$data['h1'] = 'Oupsi';
	$data['text'] = 'The page you were looking for doesn\'t exist';

	return $app['twig']->render('pages/error.twig', $data);
});

// Run Silex
$app->run();