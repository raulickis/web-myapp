package com.myapp.webmyapp.models;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
        "nome",
        "documento",
        "email",
        "ddd",
        "telefone",
        "foto_url",
        "data_cadastro",
        "enderecos"
})
public class Usuario {

    @JsonProperty("id")
    private Integer id;
    @JsonProperty("nome")
    private String nome;
    @JsonProperty("documento")
    private String documento;
    @JsonProperty("email")
    private String email;
    @JsonProperty("ddd")
    private String ddd;
    @JsonProperty("telefone")
    private String telefone;
    @JsonProperty("foto_url")
    private String fotoUrl;
    @JsonProperty("data_cadastro")
    private Date dataCadastro;
    @JsonProperty("enderecos")
    private List<Endereco> enderecos = null;
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

    @JsonProperty("nome")
    public String getNome() {
        return nome;
    }

    @JsonProperty("nome")
    public void setNome(String nome) {
        this.nome = nome;
    }

    @JsonProperty("documento")
    public String getDocumento() {
        return documento;
    }

    @JsonProperty("documento")
    public void setDocumento(String documento) {
        this.documento = documento;
    }

    @JsonProperty("email")
    public String getEmail() {
        return email;
    }

    @JsonProperty("email")
    public void setEmail(String email) {
        this.email = email;
    }

    @JsonProperty("ddd")
    public String getDdd() {
        return ddd;
    }

    @JsonProperty("ddd")
    public void setDdd(String ddd) {
        this.ddd = ddd;
    }

    @JsonProperty("telefone")
    public String getTelefone() {
        return telefone;
    }

    @JsonProperty("telefone")
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    @JsonProperty("foto_url")
    public String getFotoUrl() {
        return fotoUrl;
    }

    @JsonProperty("foto_url")
    public void setFotoUrl(String fotoUrl) {
        this.fotoUrl = fotoUrl;
    }

    @JsonProperty("data_cadastro")
    public Date getDataCadastro() {
        return dataCadastro;
    }

    public String getDataCadastroFormatted() {
        SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        return formatter.format(dataCadastro);
    }

    public String getDataCadastroFormattedSimple() {
        SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yy");
        return formatter.format(dataCadastro);
    }

    @JsonProperty("data_cadastro")
    public void setDataCadastro(Date dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    @JsonProperty("enderecos")
    public List<Endereco> getEnderecos() {
        return enderecos;
    }

    @JsonProperty("enderecos")
    public void setEnderecos(List<Endereco> enderecos) {
        this.enderecos = enderecos;
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