package br.com.systemECommerce.model.domain;

import util.ValidacaoException;

public class Fornecedor extends Pessoa {

	private String razaoSocial;

	private String cnpj;

	public Fornecedor() {
		super();
	}

	public void valida() throws ValidacaoException {
		super.valida();
		if(razaoSocial == null || razaoSocial.equals("")) {
			throw new ValidacaoException("O campo razão social é obrigatório");
		}
		if(cnpj == null || cnpj.equals("")) {
			throw new ValidacaoException("O campo cnpj é obrigatório");
		}
	}
	
	public Fornecedor(Integer codigo, String email, String nome, String razaoSocial, String cnpj) {
		super(codigo, email, nome);
		this.razaoSocial = razaoSocial;
		this.cnpj = cnpj;
	}

	public String getRazaoSocial() {
		return razaoSocial;
	}

	public void setRazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}
}
