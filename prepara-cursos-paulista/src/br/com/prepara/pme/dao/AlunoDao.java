package br.com.prepara.pme.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import br.com.prepara.pme.model.Aluno;
import br.com.prepara.pme.util.ConnectionFactory;

public class AlunoDao {

	private Connection connection;

	public AlunoDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Aluno> listar() {

		try {
			List<Aluno> listaAluno = new ArrayList<Aluno>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM pme ORDER BY nome");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Aluno aluno = new Aluno();

				aluno.setId(rs.getInt("id"));
				aluno.setNome(rs.getString("nome"));
				aluno.setIdade(rs.getInt("idade"));
				aluno.setTelefone(rs.getString("telefone"));
				aluno.setDataAgendamento(rs.getDate("data_agendamento"));

				listaAluno.add(aluno);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listaAluno;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public void alterar(Aluno aluno) {

		String sql = "UPDATE pme SET nome = ?, telefone = ?, idade = ?, data_agendamento = ? WHERE id = ?";
		PreparedStatement stmt;
		try {

			stmt = connection.prepareStatement(sql);

			stmt.setString(1, aluno.getNome());
			stmt.setString(2, aluno.getTelefone());
			stmt.setInt(3, aluno.getIdade());
			stmt.setDate(4, new java.sql.Date(aluno.getDataAgendamento().getTime()));

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remover(int id) {

		try {
			PreparedStatement stmt = connection.prepareStatement("DELETE FROM pme WHERE id = ?;");
			stmt.setInt(1, id);
			stmt.execute();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public Aluno buscarPorId(int id) {

		try {

			Aluno aluno = new Aluno();
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM pme WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				aluno.setId(rs.getInt("id"));
				aluno.setNome(rs.getString("nome"));
				aluno.setTelefone(rs.getString("telefone"));
				aluno.setIdade(rs.getInt("idade"));
				aluno.setDataAgendamento(rs.getDate("data_agendamento"));
			}

			rs.close();
			stmt.close();
			connection.close();

			return aluno;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
