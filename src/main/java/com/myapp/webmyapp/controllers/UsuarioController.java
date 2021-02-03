package com.myapp.webmyapp.controllers;

import com.myapp.webmyapp.models.Endereco;
import com.myapp.webmyapp.models.Usuario;
import com.myapp.webmyapp.services.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class UsuarioController {

	@Autowired
	UsuarioService usuarioService;

	@RequestMapping(value = "/usuario/listar", method = RequestMethod.GET)
	public String index(Map<String, Object> model){

		List<Usuario> userList = usuarioService.list();

		model.put("usuarios", userList);

		return "usuarios/lista-usuarios";
	}

    @RequestMapping(value = "/usuario/editar/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") String id, Map<String, Object> model){

        Usuario usuario = usuarioService.get(id);
        model.put("usuario", usuario);

        Endereco endereco = new Endereco();
        if (usuario.getEnderecos() != null && usuario.getEnderecos().size() > 0) {
            endereco = usuario.getEnderecos().get(0);
        }
        model.put("endereco", endereco);

        return "usuarios/cadastro-usuario";
    }


    @RequestMapping(value = "/usuario/cadastrar", method = RequestMethod.GET)
	public String create(Map<String, Object> model){

		Usuario usuario = new Usuario();
		usuario.setFotoUrl("https://cdn.pixabay.com/photo/2016/04/01/10/11/avatar-1299805__340.png");
		model.put("usuario", usuario);

        Endereco endereco = new Endereco();
		model.put("endereco", endereco);

		return "usuarios/cadastro-usuario";
	}

	@RequestMapping(value = "/usuario/salvar", method = RequestMethod.POST)
	public String save(Usuario usuario, Endereco endereco, Map<String, Object> model, @RequestBody MultiValueMap<String, String> formData){

		// Tratamento para Endereco
		if (formData.get("enderecoId") != null && formData.get("enderecoId").size() > 0 && !formData.get("enderecoId").get(0).isEmpty()) {
			endereco.setId(new Integer(formData.get("enderecoId").get(0)));
		} else {
			endereco.setId(null);
		}
		endereco.setDataCadastro(new Date());
	    List<Endereco> enderecos = new ArrayList<Endereco>();
	    enderecos.add(endereco);

	    // Tratamento para Usuario
		usuario.setDataCadastro(new Date());
	    usuario.setEnderecos(enderecos);

	    // Cria ou atualiza Usuario + Endereco
		Map<String, Object> result = usuarioService.saveOrUpdate(usuario);

		// Tratamento de Erros
		if (result.get("Errors") != null) {
			model.put("errors", result.get("Errors"));
			model.put("message", result.get("Message"));
			model.put("usuario", usuario);
			return "usuarios/cadastro-usuario";
		}

		// Volta para Lista de Usuários
		List<Usuario> userList = usuarioService.list();
		model.put("errors", null);
		model.put("message", "Usuário Inserido com Sucesso!");
		model.put("usuarios", userList);

		return "redirect:/usuario/listar";
	}

    @RequestMapping(value = "/usuario/apagar/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") String id, Map<String, Object> model){

        usuarioService.delete(id);

        List<Usuario> userList = usuarioService.list();

        model.put("usuarios", userList);
        model.put("message", "Usuário Excluído!");

        return "usuarios/lista-usuarios";
    }

}