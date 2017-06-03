var box = {};

box.elements = {};
box.elements.content = document.querySelector('.box--content');
box.elements.image   = document.querySelector('.box--image');
box.elements.title   = document.querySelector('.box--content__title');
box.elements.text    = document.querySelector('.box--content__text');
box.elements.scroll  = document.querySelector('.box--content__scroll');

var homeNav = {};

homeNav.lis     = document.querySelectorAll('.box--content--nav__item');
homeNav.containerpPicture = document.querySelector('.box--image');
homeNav.picture = document.querySelector('.box--image__img');
homeNav.hover   = false ;

/* Animation for the photo-set pages */

box.elements.image.addEventListener('scroll', function(e){
	box.elements.title.style.animationFillMode = 'none'; 
	box.elements.title.style.transform = 'translateX( -'+ (box.elements.image.scrollTop/2) +'px) translateY( '+ (box.elements.image.scrollTop/10) +'px)';
	box.elements.text.style.animationFillMode = 'none'; 
	box.elements.text.style.transform = 'translateX( -'+ (box.elements.image.scrollTop/4) +'px) translateY( '+ (box.elements.image.scrollTop/12) +'px)';
	box.elements.scroll.style.animationFillMode = 'none'; 

	box.elements.scroll.style.transform = 'translateY( -'+ (box.elements.image.offsetHeight/box.elements.image.scrollTop)*box.elements.content.offsetHeight +'px) translateX(0px) rotate(-90deg) ';
	console.log((box.elements.image.offsetHeight/box.elements.image.scrollTop)*box.elements.content.offsetHeight);
});

/* Update backgroundImage depending on the hover */

for(var i = 0; i<homeNav.lis.length ; i++){
	homeNav.lis[i].addEventListener('mouseover', function(){
		var url = this.dataset.picture ;
		homeNav.picture.classList.add('transition');
		homeNav.picture.src = url ;
		homeNav.picture.addEventListener('animationend', function(){
			homeNav.picture.classList.remove('transition');
		})

		homeNav.hover = true ;
	});
	homeNav.lis[i].addEventListener('mouseout', function(){
		var url = 'ressources/img/push_towards_the_west/pttw_10.jpg';
		homeNav.picture.classList.add('transition');
		homeNav.picture.src = url ;
		homeNav.picture.addEventListener('animationend', function(){
			homeNav.picture.classList.remove('transition');
		})
		homeNav.hover = false ;
	});

}