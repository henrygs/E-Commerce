package br.com.systemECommerce.model.domain;

import util.ValidacaoException;

public class Cliente extends Pessoa {
	private Double porcentagemDesconto;
	private String cpf;

	public Cliente(Integer codigo, String email, String nome, Double porcentagemDesconto, String cpf) {
		super(codigo, email, nome);
		if(porcentagemDesconto == null) {
			this.porcentagemDesconto = 0d;
		}else {
			this.porcentagemDesconto = porcentagemDesconto;
		}
		
		this.cpf = cpf;
	}
	
	public Cliente() {
		this.porcentagemDesconto = 0d;
	}
	
	public void valida() throws ValidacaoException{
		super.valida();
		if(cpf == null || cpf.equals("")) {
			throw new ValidacaoException("O campo CPF é obrigado!");
		}
	}
	
	
	public Double getPorcentagemDesconto() {
		return porcentagemDesconto;
	}
	public void setPorcentagemDesconto(Double porcentagemDesconto) {
		this.porcentagemDesconto = porcentagemDesconto;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	
}
