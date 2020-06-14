package br.com.systemECommerce.model.domain;

import util.ValidacaoException;

public class Pessoa {
	public Integer codigo;
	
	public String email;
	
	public String nome;

	public Pessoa() {
		super();
	}

	public Pessoa(Integer codigo, String email, String nome) {
		super();
		this.codigo = codigo;
		this.email = email;
		this.nome = nome;
	}

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void valida() throws ValidacaoException {
		if(nome == null || nome.equals("")) {
			throw new ValidacaoException("O campo nome � obrigat�rio");
		}
		
	}


}
