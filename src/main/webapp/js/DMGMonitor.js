function initHome(){

	var chartLamiere = c3.generate({
    data: {
        // iris data from R
        columns: [
            ['Da Iniziare', 30],
            ['In lavorazione', 120],
            ['Interrotte', 120],
            ['Complete', 120],
        ],
        type : 'pie',
    	}
	});

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

	loadDatiGenerali();
}

function loadDatiGenerali(){
	$('#txtFatturatoTotale').val(0.0);
	$('#txtFatturatoGiornaliero').val(0.0);
	$('#txtCommesseDaIniziare').val(0.0);
	$('#txtCommesseInLavorazione').val(0.0);
	$('#txtCommesseComplete').val(0.0);
	$('#txtCommesseInterrotte').val(0.0);
	$('#txtReclamiGiornalieri').val(0.0);
	$('#txtReclamiAnnui').val(0.0);
	$('#txtRisorsePresenti').val(0.0);
	$('#txtRisorseAssenti').val(0.0);
	$('#txtInfortuniGiornalieri').val(0.0);
	$('#txtInfortuniAnnui').val(0.0);
}