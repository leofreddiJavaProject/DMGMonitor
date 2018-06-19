function initHome(){
	//listeners
	$('li','.navbar-nav').on('click',function(){
		$('li','.navbar-nav').removeClass('clicked');
		$('a','.navbar-nav').removeAttr('style');
		$(this).addClass('clicked');
		$('a',this).attr('style','color: white');
		if($(window).width()<768){
			$('#btnShowMenu').click();
		}
	});

	$('#btnShowMenu').on('click',function(){
		$('li','.navbar-nav').removeClass('clicked');
		$('a','.navbar-nav').removeAttr('style');
	});

	$('li','.tabList').on('click',function(){
		var idTabContent = $(this).find('a').attr('href');
		$('.tab-content').addClass('hidden');
		$(idTabContent).removeClass('hidden');
	});
}