package com.myapp.webmyapp.controllers;

import com.myapp.webmyapp.models.Usuario;
import com.myapp.webmyapp.services.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

	@RequestMapping(value = "/usuario/cadastrar", method = RequestMethod.GET)
	public String create(Map<String, Object> model){

		Usuario usuario = new Usuario();
		usuario.setFotoUrl("../resources/pic/user_avatar_10.png");
		model.put("usuario", usuario);

		return "usuarios/formulario-usuario";
	}

	@RequestMapping(value = "/usuario/salvar", method = RequestMethod.POST)
	public String save(Usuario usuario, Map<String, Object> model){

		Map<String, Object> result = usuarioService.save(usuario);

		if (result.get("Errors") != null) {
			model.put("errors", result.get("Errors"));
			model.put("message", result.get("Message"));
			model.put("usuario", usuario);
			return "usuarios/formulario-usuario";
		}

		List<Usuario> userList = usuarioService.list();
		model.put("errors", null);
		model.put("message", "Usuário Inserido com Sucesso!");
		model.put("usuarios", userList);

		return "usuarios/lista-usuarios";
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