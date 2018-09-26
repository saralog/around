<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="connessione.Db_STviaggi,connessione.STviaggi,java.util.*,java.text.SimpleDateFormat"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>SpaceTrip</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  
<link href="https://fonts.googleapis.com/css?family=Russo+One|Share" rel="stylesheet"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="bootstrap_style5.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">SpaceTrip</a>
  <div class="nav-icon-space"><i class="fa fa-grav" style="font-size:24px"></i></div>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto navbar-right">
      <li class="nav-item active">
        <a class="nav-link" href="#">Surfing Space Waves<span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Saturno
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Rings</a>
          <a class="dropdown-item" href="#">Moons</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Oracolo di Daphnis</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact</a>
      </li>
      
    </ul>
    
</div>
</nav>
<main>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="img/veilofice.jpg" width="100%" height="400px" alt="First slide">
      <div class="carousel-caption d-md-block">
    <h5 class="slide-text-title">Saturno</h5>
    <p class="slide-text">Anelli di ghiaccio</p>
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/GW170817.jpg" width="100%" height="400px" alt="Second slide">
      <div class="carousel-caption d-md-block">
    <h5 class="slide-text-title">Surfing on Waves</h5>
    <p class="slide-text">L'origine della tempesta evento gidobleui170817</p>
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/daphnis.jpg" width="100%" height="400px" alt="Third slide">
      <div class="carousel-caption d-md-block">
    <h5 class="slide-text-title">Daphnis</h5>
    <p class="slide-text">L'oracolo come mai avete visto</p>
  </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>	
<div class="container-fluid">
	<div class="title-wrapper slide-text">
		<blockquote class="blockquote"><p>Una volta che avrete imparato a Volare, camminerete sulla terra guardando il cielo perché è là che siete stati ed è là che vorrete tornare.

</p><footer class="blockquote-footer">by Leonardo di ser Piero da Vinci <cite title="Ars">Ars</cite></footer> </blockquote>
	</div>
		<div class="row">
			<div class="col-sm-4 left">
				<h1>GW170817</h1>
				<h2>Un evento MAI visto prima</h2>				
				<p>
				<% 
				Db_STviaggi db=new Db_STviaggi();
				ArrayList <STviaggi> list=db.elencoIscritti();
				for (int i=0; i<list.size() ; i++){
					int ID=list.get(i).getId();
					int ID_viaggio=list.get(i).getId_v();	
			
					String nome=list.get(i).getNome();
					String ruolo=list.get(i).getRuolo();
					Date data=list.get(i).getGiornoPartenza();
					String luogoPartenza=list.get(i).getLuogoPartenza();
					String luogoArrivo=list.get(i).getLuogoArrivo();
					if(ruolo.equals("Passeggero")){
%>
<br>
codice viaggio : <%=ID_viaggio %><br>
luogo partenza  : <%=luogoPartenza %><br>
luogo Arrivo  : <%=luogoArrivo %><br>
nome <%=nome %><br>

ruolo <%=ruolo %><br>
data <%=data%><br>
<br>
<%}}
%></p>
						
			</div>
			<div class="col-sm-4 center">
				<h1>Saturno</h1>
				<h2>Sonda Cassini</h2>				
				<p><% 
				
				for (int i=0; i<list.size() ; i++){
					int ID=list.get(i).getId();
					int ID_viaggio=list.get(i).getId_v();	
			
					String nome=list.get(i).getNome();
					String ruolo=list.get(i).getRuolo();
					Date data=list.get(i).getGiornoPartenza();
					String luogoPartenza=list.get(i).getLuogoPartenza();
					String luogoArrivo=list.get(i).getLuogoArrivo();
					if(ruolo.equals("Capitano")){
%>
<br>
codice viaggio : <%=ID_viaggio %><br>
luogo partenza  : <%=luogoPartenza %><br>
luogo Arrivo  : <%=luogoArrivo %><br>
nome <%=nome %><br>

ruolo <%=ruolo %><br>
data <%=data%><br>
<br>
<%}}
%></p>
			</div>
			<div class="col-sm-4 right"><h1>Daphnis</h1>
				<h2>L'oracolo di Daphnis</h2>				
				<p>Consulta l'oracolo più antico del mondo, l unica luna che procede ondeggiando, è li da milioni di anni ma nessuno prima di Cassini l aveva mai vista
				Essa è antica per noi ma come un neonato cosmico ci svela i segreti del divenire, della trasformazione della creazione dei corpi celesti</p></div>			
		</div>
	</div>

</main>
<footer class="footer"> <p>Footer</p></footer>
</body>
</html>
