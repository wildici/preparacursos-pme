<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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

<c:import url="/view/comum/cabecalho.jsp" />
   
	<div class="row container">
		<fieldset>
			<legend>
				<img src="view/img/pme2.png" style="width: 300px;">
			</legend> <br> <br> <br> <br>
			<form class="col s12" action="alterarAluno" method="POST" enctype="multipart/form-data">
				<div class="row">

					<div class="input-field col l6 s12">
						<i class="material-icons prefix">account_circle</i> 
						<input id="iNome" type="text" class="validate" required maxlength="60" name="nome"  style="font-size: 20px" value="${aluno.nome}"> 
						<label for="iNome"> Nome Completo</label>
					</div>
					<div class="input-field col l3 s12">
						<i class="material-icons prefix">phone</i> 
						<input id="iTelefone" type="text" class="validate" required maxlength="11" name="telefone"  style="font-size: 20px" value="${aluno.telefone}" > 
						<label for="iTelefone"> Telefone </label>
					</div>
					<div class="input-field col l3 s12">
						<i class="material-icons prefix">assignment_ind</i> 
						<input id="iIdade" type="text" class="validate" required maxlength="2" name="idade"  style="font-size: 20px" value="${aluno.idade}"> 
							<label for="iIdade"> Idade </label>
					</div>
					<div class="input-field col l3 s12">
						<i class="material-icons prefix">date_range</i> 
						<input id="iData" type="text" name="dataAgendamento" class="validate" maxlength="10"  style="font-size: 20px" value="<fmt:formatDate value="${aluno.dataAgendamento}" pattern="dd/MM/yyyy" />"> 
						<label for="iData"> Data de Agendamento</label>
						<input type="hidden" name="id" value="${aluno.id}">
					</div>
				</div> <br> <br>
				<button class="btn green darken-4" type="submit"><b> Alterar </b><i class="material-icons right"> cached </i> </button>
			</form>
		</fieldset>
	</div>

	<c:import url="/view/comum/rodape.jsp" />

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="view/materialize/js/materialize.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
	<script>
	
		//Menu
	  $(document).ready(function(){
		    $('.sidenav').sidenav();
		  });
		//Máscara
	  $(document).ready(function () { 
	        var $data = $("#iData");
	        $data.mask('00/00/0000');
	        var $telefone = $("#iTelefone");
	        $telefone.mask('0 0000-0000', {reverse: true});
	    });
    	
    </script>
</body>
</html>