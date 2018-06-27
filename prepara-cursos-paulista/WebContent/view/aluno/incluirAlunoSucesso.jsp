<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PME</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="view/materialize/css/materialize.min.css"
	media="screen,projection" />
<link rel="stylesheet" href="view/css/estilo.css" />
<link rel="icon" href="view/img/icon.png">
</head>
<body>
	
	
	
	 <div class="row centered">
    <div class="col s12">
      <div class="card  indigo darken-4">
        <div class="card-content white-text">
          <span class="card-title">Aluno(a) <b>${param.nome}</b> agendado(a) com sucesso!</span>
        </div>
        <div class="card-action center-align">
        <a class="waves-effect waves-light btn" href="exibirIncluirAluno"> Agendar outro aluno </a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <a class="waves-effect waves-light btn" href="listarAluno"> Listar Alunos </a>
        </div>
      </div>
    </div>
  </div>
  
  	<c:import url="/view/comum/rodape.jsp" />
  
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="view/materialize/js/materialize.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
	<script>
		$(document).ready(function(){
			$("body").css({"background-image": "url('view/img/01.png')", 
							"background-repeat": "no-repeat",
							"background-size": "cover"});
		});
	</script>
</body>
</html>