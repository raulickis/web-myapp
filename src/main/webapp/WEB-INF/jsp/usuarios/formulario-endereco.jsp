<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<hr class="mb-4">
<h4 class="mb-3">Endereço</h4>

<input id="enderecoId" name="enderecoId" class="d-none" value="${endereco.id}"/>
<input id="usuarioId" name="usuarioId" class="d-none" value="${usuario.id}"/>

<div class="row">
	<div class="col-md-4 mb-3">
		<label for="cep">CEP</label>
		<input type="text" class="form-control" id="cep" name="cep" value="${endereco.cep}" placeholder="00000-000" required="" minlength="9" maxlength="9" />
		<div class="invalid-feedback">
			É obrigatório inserir um CEP.
		</div>
	</div>
	<div class="col-md-8 mb-3">
		<label for="rua">Endereço</label>
		<input type="text" class="form-control" id="rua" name="rua" value="${endereco.rua}" placeholder="" required="" maxlength="45" />
		<div class="invalid-feedback">
			Por favor, insira seu endereço.
		</div>
	</div>
</div>

<div class="row">
	<div class="col-md-4 mb-3">
		<label for="numero">Número</label>
		<input type="text" class="form-control" id="numero" name="numero" value="${endereco.numero}" placeholder="" required="" maxlength="20" />
		<div class="invalid-feedback">
			Por favor, insira o número.
		</div>
	</div>
	<div class="col-md-4 mb-3">
		<label for="complemento">Complemento <span class="text-muted">(Opcional)</span></label>
		<input type="text" class="form-control" id="complemento" name="complemento" value="${endereco.complemento}" placeholder="" maxlength="45" />
		<div class="invalid-feedback">
			Por favor, insira o complemento.
		</div>
	</div>
	<div class="col-md-4 mb-3">
		<label for="bairro">Bairro</label>
		<input type="text" class="form-control" id="bairro" name="bairro" value="${endereco.bairro}" placeholder="" required="" maxlength="45" />
		<div class="invalid-feedback">
			Por favor, insira o Bairro.
		</div>
	</div>
</div>

<div class="row">
	<div class="col-md-4 mb-3">
		<label for="cidade">Cidade</label>
		<input type="text" class="form-control" id="cidade" name="cidade" value="${endereco.cidade} "placeholder="" required="" maxlength="32" />
		<div class="invalid-feedback">
			Por favor, insira a cidade.
		</div>
	</div>
	<div class="col-md-4 mb-3">
		<label for="uf">Estado</label>
		<select class="custom-select d-block w-100" id="uf" name="uf" value="${endereco.uf}" required="">
			<option value="">Escolha...</option>
			<option value="AC">Acre</option>
			<option value="AL">Alagoas</option>
			<option value="AP">Amapá</option>
			<option value="AM">Amazonas</option>
			<option value="BA">Bahia</option>
			<option value="CE">Ceará</option>
			<option value="DF">Distrito Federal</option>
			<option value="ES">Espírito Santo</option>
			<option value="GO">Goiás</option>
			<option value="MA">Maranhão</option>
			<option value="MT">Mato Grosso</option>
			<option value="MS">Mato Grosso do Sul</option>
			<option value="MG">Minas Gerais</option>
			<option value="PA">Pará</option>
			<option value="PB">Paraíba</option>
			<option value="PR">Paraná</option>
			<option value="PE">Pernambuco</option>
			<option value="PI">Piauí</option>
			<option value="RJ">Rio de Janeiro</option>
			<option value="RN">Rio Grande do Norte</option>
			<option value="RS">Rio Grande do Sul</option>
			<option value="RO">Rondônia</option>
			<option value="RR">Roraima</option>
			<option value="SC">Santa Catarina</option>
			<option value="SP">São Paulo</option>
			<option value="SE">Sergipe</option>
			<option value="TO">Tocantins</option>
		</select>
		<div class="invalid-feedback">
			Por favor, insira um estado válido.
		</div>
	</div>
	<div class="col-md-4 mb-3">
		<label for="pais">País</label>
		<select class="custom-select d-block w-100" id="pais" name="pais" required="">
			<option value="BRA">Brasil</option>
		</select>
		<div class="invalid-feedback">
			Por favor, escolha um país válido.
		</div>
	</div>
</div>
<hr class="mb-4">