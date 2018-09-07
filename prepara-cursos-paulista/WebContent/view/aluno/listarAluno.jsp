<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
			</legend>
			<br> <br>
		</fieldset>
		<div style="text-align: center; font-size: 20px; color: red;">${msg}</div>
		<!-- //////////////////////////////////////////////////////////////////////////////////////////// -->
		<ul class="collapsible">
			<li>
				<div class="collapsible-header">
					<i class="material-icons">date_range</i> <b> Quarta-feira -
						02/05/2018 </b>
				</div>
				<div class="collapsible-body">

					<table class="highlight centered" id="tabela1">
						<thead>
							<tr>
								<th style="font-size: 20px">Nome do Aluno(a)</th>
								<th style="font-size: 20px">Idade</th>
								<th style="font-size: 20px">Telefone</th>
								<th style="font-size: 20px">Ações</th>
							</tr>
						</thead>
						<c:forEach var="p" items="${listaAlunos}">
							<c:if test="${p.dataAgendamento == '2018-02-05'}">
								<tbody>
									<tr>
										<td style="font-size: 20px">${p.nome}</td>
										<td style="font-size: 20px">${p.idade}</td>
										<td style="font-size: 20px">${p.telefone}</td>
										<td><a class="btn-floating btn cyan"
											href="exibirAlterarAluno?id=${p.id}"><i
												class="material-icons">edit</i></a> &nbsp; <a
											class="btn-floating btn red" href="removerAluno?id=${p.id}"><i
												class="material-icons">delete</i></a></td>
									</tr>
								</tbody>
							</c:if>						
						</c:forEach>
					</table>
				</div>
			</li>
			<!-- //////////////////////////////////////////////////////////////////////////////////////////// -->
<!-- 
			<li>
				<div class="collapsible-header">
					<i class="material-icons">date_range</i><b> Quarta-feira -
						11/04/2018 </b>
				</div>
				<div class="collapsible-body">

					<table class="highlight centered" id="tabela2">
						<thead>
							<tr>
								<th style="font-size: 20px">Nome do Aluno(a)</th>
								<th style="font-size: 20px">Idade</th>
								<th style="font-size: 20px">Telefone</th>
								<th style="font-size: 20px">Ações</th>
							</tr>
						</thead>
						<c:forEach var="p" items="${listaAlunos}">
							<c:if test="${p.dataAgendamento == '2018-11-04'}">
								<tbody>
									<tr>
										<td style="font-size: 20px">${p.nome}</td>
										<td style="font-size: 20px">${p.idade}</td>
										<td style="font-size: 20px">${p.telefone}</td>
										<td><a class="btn-floating btn cyan"
											href="exibirAlterarAluno?id=${p.id}"><i
												class="material-icons">edit</i></a> &nbsp; <a
											class="btn-floating btn red" href="removerAluno?id=${p.id}"><i
												class="material-icons">delete</i></a></td>
									</tr>
								</tbody>
							</c:if>
						</c:forEach>
					</table>
				</div>
			</li>
			<!-- //////////////////////////////////////////////////////////////////////////////////////////// -->
			<!-- <li>
				<div class="collapsible-header">
					<i class="material-icons">date_range</i> <b> Quarta-feira -
						11/04/2018 </b>
				</div>
				<div class="collapsible-body">

					<table class="highlight centered" id="tabela3">
						<thead>
							<tr>
								<th style="font-size: 20px">Nome do Aluno(a)</th>
								<th style="font-size: 20px">Idade</th>
								<th style="font-size: 20px">Telefone</th>
								<th style="font-size: 20px">Ações</th>
							</tr>
						</thead>
						<c:forEach var="p" items="${listaAlunos}">
							<tbody>
								<tr>
									<td style="font-size: 20px">${p.nome}</td>
									<td style="font-size: 20px">${p.idade}</td>
									<td style="font-size: 20px">${p.telefone}</td>
									<td><a class="btn-floating btn cyan"
										href="exibirAlterarAluno?id=${p.id}"><i
											class="material-icons">edit</i></a> &nbsp; <a
										class="btn-floating btn red" href="removerAluno?id=${p.id}"><i
											class="material-icons">delete</i></a></td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
				</div> 
			</li> -->
		</ul>
	</div>
	<!-- //////////////////////////////////////////////////////////////////////////////////////////// -->

	<c:import url="/view/comum/rodape.jsp" />

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="view/materialize/js/materialize.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
	<script>
	
		//Menu
	  $(document).ready(function(){
		    $('.sidenav').sidenav();
		  });
		
		//collapse
	  $(document).ready(function(){
		    $('.collapsible').collapsible();
		  });
    	
		//Contagem de linhas
		  $(document).ready(function(){
		    $('#tabela1').length();
		  });
    </script>
</body>
</html>