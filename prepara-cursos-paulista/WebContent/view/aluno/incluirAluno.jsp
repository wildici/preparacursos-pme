<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
			</legend>
			<br> <br> <br> <br>
			<form class="col s12" action="incluirAluno" method="POST"
				enctype="multipart/form-data">
				<div class="row">
					<div class="input-field col l6 s12">
						<i class="material-icons prefix">account_circle</i> <input
							id="iNome" type="text" class="validate" maxlength="60"
							name="nome" style="font-size: 20px"> <label for="iNome">
							Nome Completo</label>

					</div>

					<div class="input-field col l3 s12">
						<i class="material-icons prefix">phone</i> <input id="iTelefone"
							type="text" class="validate" maxlength="11" name="telefone"
							style="font-size: 20px"> <label for="iTelefone">
							Telefone </label>
					</div>
					<div class="input-field col l3 s12">
						<i class="material-icons prefix">assignment_ind</i> <input
							id="iIdade" type="text" class="validate" maxlength="2"
							name="idade" style="font-size: 20px"> <label for="iIdade">
							Idade </label>
					</div>
					<div class="input-field col l3 s12">
						<i class="material-icons prefix">date_range</i> <input id="iData"
							type="text" name="dataAgendamento" class="validate"
							maxlength="10" style="font-size: 20px"> <label
							for="iData"> Data de Agendamento</label>
					</div>
					<!-- <div class="input-field col s4">
					<i class="material-icons prefix">school</i>
						<select required>
							<option value="" disabled selected>Selecione o Curso</option>
							<option value="1">Operador de Computador</option>
							<option value="2">Inglês</option>
							<option value="3">Rotinas Administrativas</option>
							<option value="4">Montagem e Manutenção</option>
							<option value="5">Design Gráfico</option>
							<option value="6">Web Design</option>
							<option value="7">Profisional da Saúde</option>
							<option value="8">Analista T.I</option>
							<option value="9">Desenvolvedor de App</option>
							<option value="10">Desenvolvedor de Games</option>
							<option value="11">Programador</option>
							<option value="12">Personal CAD</option>
							<option value="13">Excel Avançado</option>
							<option value="14">Youtuber</option>
							<option value="15">Web Design</option>
							<option value="16">Web Design</option>
						</select>
					</div> -->
				</div>
				<br> <br>
				<button class="btn red darken-4" type="submit">
					<b>Agendar</b> <i class="material-icons right"> done </i>
				</button>
			</form>
		</fieldset>
	</div>

	<div>
		<center>
			<form:errors path="aluno.nome" cssStyle="color:red; font-size:20px" />
			<br />
		</center>
	</div>


	<c:import url="/view/comum/rodape.jsp" />

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="view/materialize/js/materialize.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
	<script>
		//Menu
		$(document).ready(function() {
			$('.sidenav').sidenav();
			$('select').formSelect();
		});
		//Máscara
		$(document).ready(function() {
			var $data = $("#iData");
			$data.mask('00/00/0000');
			var $telefone = $("#iTelefone");
			$telefone.mask('0 0000-0000', {
				reverse : true
			});
		});
	</script>
</body>
</html>