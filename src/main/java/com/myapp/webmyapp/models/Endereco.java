package com.myapp.webmyapp.models;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
        "id",
        "usuario_id",
        "cep",
        "rua",
        "numero",
        "complemento",
        "bairro",
        "cidade",
        "uf",
        "data_cadastro"
})
public class Endereco {

    @JsonProperty("id")
    private Integer id;
    @JsonProperty("usuario_id")
    private Integer usuarioId;
    @JsonProperty("cep")
    private String cep;
    @JsonProperty("rua")
    private String rua;
    @JsonProperty("numero")
    private String numero;
    @JsonProperty("complemento")
    private String complemento;
    @JsonProperty("bairro")
    private String bairro;
    @JsonProperty("cidade")
    private String cidade;
    @JsonProperty("uf")
    private String uf;
    @JsonProperty("data_cadastro")
    private Date dataCadastro;
    @JsonIgnore
    private Map<String, Object> additionalProperties = new HashMap<String, Object>();

    @JsonProperty("id")
    public Integer getId() {
        return id;
    }

    @JsonProperty("id")
    public void setId(Integer id) {
        this.id = id;
    }

    @JsonProperty("usuario_id")
    public Integer getUsuarioId() {
        return usuarioId;
    }

    @JsonProperty("usuario_id")
    public void setUsuarioId(Integer usuarioId) {
        this.usuarioId = usuarioId;
    }

    @JsonProperty("cep")
    public String getCep() {
        return cep;
    }

    @JsonProperty("cep")
    public void setCep(String cep) {
        this.cep = cep;
    }

    @JsonProperty("rua")
    public String getRua() {
        return rua;
    }

    @JsonProperty("rua")
    public void setRua(String rua) {
        this.rua = rua;
    }

    @JsonProperty("numero")
    public String getNumero() {
        return numero;
    }

    @JsonProperty("numero")
    public void setNumero(String numero) {
        this.numero = numero;
    }

    @JsonProperty("complemento")
    public String getComplemento() {
        return complemento;
    }

    @JsonProperty("complemento")
    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    @JsonProperty("bairro")
    public String getBairro() {
        return bairro;
    }

    @JsonProperty("bairro")
    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    @JsonProperty("cidade")
    public String getCidade() {
        return cidade;
    }

    @JsonProperty("cidade")
    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    @JsonProperty("uf")
    public String getUf() {
        return uf;
    }

    @JsonProperty("uf")
    public void setUf(String uf) {
        this.uf = uf;
    }

    @JsonProperty("data_cadastro")
    public Date getDataCadastro() {
        return dataCadastro;
    }

    public String getDataCadastroFormatted() {
        SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        return formatter.format(dataCadastro);
    }

    @JsonProperty("data_cadastro")
    public void setDataCadastro(Date dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    @JsonAnyGetter
    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    @JsonAnySetter
    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

}