package br.com.prepara.pme.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.prepara.pme.dao.AlunoDao;
import br.com.prepara.pme.dao.AlunoHibernateDao;
import br.com.prepara.pme.model.Aluno;
import br.com.prepara.pme.util.Util;

@Controller
public class AlunoController {

	@RequestMapping("/exibirIncluirAluno")
	public String exibirIncluirAluno() {
		return "aluno/incluirAluno";
	}

	@RequestMapping("/incluirAluno")
	public String incluirAluno(@Valid Aluno aluno, BindingResult result) {
		
		if (result.hasErrors()) {
			 return "forward:exibirIncluirAluno";
			}

		
		AlunoHibernateDao dao = new AlunoHibernateDao();
		dao.inserir(aluno);
		return "aluno/incluirAlunoSucesso";
	}

	
    @RequestMapping("/listarAluno")
    public String listarAluno(Model model) {

    	AlunoDao dao = new AlunoDao();
    	List<Aluno> listaAlunos = dao.listar();
    	model.addAttribute("listaAlunos", listaAlunos);
	return "aluno/listarAluno";
    }

    
    @RequestMapping("/removerAluno")
    public String removerAluno(Aluno aluno, Model model) {

    	AlunoHibernateDao dao = new AlunoHibernateDao();
	dao.remover(aluno.getId());
	model.addAttribute("msg", "Aluno removido com sucesso!");

	return "forward:listarAluno";
    }

    @RequestMapping("/exibirAlterarAluno")
    public String exibirAlterarAluno(Aluno aluno, Model model) {

    	AlunoDao dao = new AlunoDao();
	Aluno alunoCompleto = dao.buscarPorId(aluno.getId());
	model.addAttribute("aluno", alunoCompleto);

	return "aluno/alterarAluno";
    }
    
    @RequestMapping("/alterarAluno")
    public String alterarAluno(Aluno aluno, Model model) {

    	AlunoHibernateDao dao = new AlunoHibernateDao();
	dao.alterar(aluno);
	model.addAttribute("msg", "Aluno Alterado com Sucesso!");

	return "forward:listarAluno";
    }
}
