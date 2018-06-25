<!DOCTYPE html>
<html lang="en">

<head>
    <title>DMG Monitor</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/DMGMonitor.css">
    <link href="/path/to/c3.css" rel="stylesheet">
    <script src="/path/to/d3.v4.min.js" charset="utf-8"></script>
    <script src="/path/to/c3.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/DMGMonitor.js"></script>
    <script>
    $(document).ready(function() {
        initHome();
    });
    </script>
</head>

<body>
    <nav class="navbar navbar-inverse ">
        <div class="container-fluid">
            <div class="navbar-header">
                <button id="btnShowMenu" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img src="ic_launcher_dmg_monitor-web.png" alt="Smiley face" height="50" width="50">
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                 <form class="navbar-form navbar-right" action="javascript:loadOrderById()">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Cerca qui la commessa">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit">
                                <i class="glyphicon glyphicon-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
                <ul class="nav navbar-nav tabList">
                    <li class="clicked"><a style="color: white" href="#generale">Generale <i class="fa fa-bar-chart"></i></a></li>
                    <li><a href="#produzione">Produzione <i class="fa fa-cubes"></i></a></li>
                    <li><a href="#commerciale">Commerciale <i class="fa fa-handshake-o"></i></a></li>
                    <li><a href="#qualita">Qualita <i class="fa fa-exclamation-triangle"></i></a></li>
                    <li><a href="#preferite">Commesse Preferite <i class="fa fa-star-o"></i></a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="content" id="content">
        <div class="row tab-content" id="generale">
            <div class="col-md-6">
                <div class="card">
                    <ul class="list-group">
                        <p class="list-group-item header-card">Dati Generali</p>
                        <li class="list-group-item"> Fatturato Totale <input id="txtFatturatoTotale" class="generalData pull-right border-0" type="text"/></li>
                        <li class="list-group-item"> Fatturato Giornaliero<input id="txtFatturatoGiornaliero" class="generalData pull-right border-0" type="text"/></li>
                        <li class="list-group-item"> Commesse da Iniziare<input id="txtCommesseDaIniziare" class="generalData pull-right border-0" type="text"/></li>
                        <li class="list-group-item"> Commesse in Lavorazione<input id="txtCommesseInLavorazione" class="generalData pull-right border-0" type="text"/></li>
                        <li class="list-group-item"> Commesse Complete<input id="txtCommesseComplete" class="generalData pull-right border-0" type="text"/></li>
                        <li class="list-group-item"> Commesse Interrotte<input id="txtCommesseInterrotte" class="generalData pull-right border-0" type="text"/></li>
                        <li class="list-group-item"> Reclami Giornalieri<input id="txtReclamiGiornalieri" class="generalData pull-right border-0" type="text"/></li>
                        <li class="list-group-item"> Reclami Annui<input id="txtReclamiAnnui" class="generalData pull-right border-0" type="text"/></li>
                        <li class="list-group-item"> Risorse Presenti<input id="txtRisorsePresenti" class="generalData pull-right border-0" type="text"/></li>
                        <li class="list-group-item"> Risorse Assenti<input id="txtRisorseAssenti" class="generalData pull-right border-0" type="text"/></li>
                        <li class="list-group-item"> Infortuni Giornalieri<input id="txtInfortuniGiornalieri" class="generalData pull-right border-0" type="text"/></li>
                        <li class="list-group-item"> Infortuni Annui<input id="txtInfortuniAnnui" class="generalData pull-right border-0" type="text"/></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="list-group">
                        <p class="list-group-item header-card">Acquisto</p>
                        <a href="#" class="list-group-item">Valore Ordini <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Numero Ordini  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
                <div class="card">
                    <div class="list-group">
                        <p class="list-group-item header-card">Obiettivi</p>
                        <a href="#" class="list-group-item">Obiettivo Giornaliero <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Andamento Obiettivi <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
                <div class="card">
                    <div class="list-group">
                        <p class="list-group-item header-card">Commesse</p>
                        <a href="#" class="list-group-item">Rapporto Commesse / Ritardi <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Lista Ritardi <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
                <div class="card">
                    <div class="list-group">
                        <p class="list-group-item header-card">Urgenze</p>
                        <a href="#" class="list-group-item">Commesse Urgenti <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Ordini Urgenti <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
                <div class="card">
                    <div class="list-group">
                        <p class="list-group-item header-card">Risorse</p>
                        <a href="#" class="list-group-item">Percentuale Risorse presenti / assenti <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Lista Assenti <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="col-md-2">
                    <div class="card">
                        <div class="chartLamiere"></div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="card">
                        <div class="chartMontaggio"></div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="card">
                        <div class="chartQuadri"></div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="card">
                        <div class="chartSpedizioni"></div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="card">
                        <div class="chartSchindler"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row hidden tab-content" id="produzione">
            <div class="col-md-12">
                <div class="card">
                    <div class="list-group">
                        <p class="list-group-item header-card">Statistiche Reparti</p>
                        <a href="#" class="list-group-item">Reparto Lamiere <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Reparto Montaggio  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Reparto Quadri  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Reparto Spedizioni  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Reparto Schindler  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
                <div class="card">
                    <div class="list-group">
                        <p class="list-group-item header-card">Risorse</p>
                        <a href="#" class="list-group-item">Percentuale Risorse presenti / assenti <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Grafico Risorse <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Lista Assenti <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row hidden tab-content" id="commerciale">
            <div class="col-md-12">
                <div class="card">
                    <div class="list-group">
                        <p class="list-group-item header-card">Venduto Quantita</p>
                        <a href="#" class="list-group-item">Venduto Quantita per Macrofamiglia <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Venduto Quantita per Risorsa <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row hidden tab-content" id="qualita">
            <div class="col-md-12">
                <div class="card">
                    <div class="list-group">
                        <p class="list-group-item header-card">Statistiche Reclami</p>
                        <a href="#" class="list-group-item">Rapporto Reclami / Anno <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto Reclami / Commesse  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto Reclami Produzione / Anno <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto Reclami Produzione / Commesse  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto Reclami / Azioni correttive   <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
                <div class="card">
                     <div class="list-group">
                        <p class="list-group-item header-card">Statistiche non Conformita Interne</p>
                        <a href="#" class="list-group-item">Rapporto NCI / Anno <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto NCI / Commesse  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto NCI Produzione / Anno <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto NCI Produzione / Commesse  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto NCI / Azioni correttive   <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
                <div class="card">
                     <div class="list-group">
                        <p class="list-group-item header-card">Statistiche Difettosita</p>
                        <a href="#" class="list-group-item">Statistiche Difettosita Macrofamiglie <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Statistiche Difettosita Famiglie   <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row hidden tab-content" id="qualita">
            <div class="col-md-12">
                <div class="card">
                    <div class="list-group">
                        <p class="list-group-item header-card">Statistiche Reclami</p>
                        <a href="#" class="list-group-item">Rapporto Reclami / Anno <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto Reclami / Commesse  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto Reclami Produzione / Anno <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto Reclami Produzione / Commesse  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto Reclami / Azioni correttive   <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
                <div class="card">
                     <div class="list-group">
                        <p class="list-group-item header-card">Statistiche non Conformita Interne</p>
                        <a href="#" class="list-group-item">Rapporto NCI / Anno <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto NCI / Commesse  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto NCI Produzione / Anno <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto NCI Produzione / Commesse  <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Rapporto NCI / Azioni correttive   <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
                <div class="card">
                     <div class="list-group">
                        <p class="list-group-item header-card">Statistiche Difettosita</p>
                        <a href="#" class="list-group-item">Statistiche Difettosita Macrofamiglie <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                        <a href="#" class="list-group-item">Statistiche Difettosita Famiglie   <i class="glyphicon glyphicon-chevron-right pull-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row hidden tab-content" id="preferite">
            <div class="col-md-12">
                <div class="card">
                    <div class="list-group">
                        <p class="list-group-item header-card">Commesse Preferite</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>