$(document).ready(function() {

    $("#message").fadeTo(5000, 500).slideUp(1000, function () {
        $("#message").slideUp(500);
    });

    // Condição para descobrir se está na tela de cadastro, quando esses campos existirem
    if ($('#documento').length && $('#cep').length) {

        $("#documento").keydown(function(){

            var tamanho = $("#documento").val().length;

            if(tamanho <= 14){
                try {
                    $("#documento").unmask();
                } catch (e) {}
                $("#documento").mask("999.999.999-999");
            } else {
                try {
                    $("#documento").unmask();
                } catch (e) {}
                $("#documento").mask("99.999.999/9999-99");
            }

            // ajustando foco
            var elem = this;
            setTimeout(function(){
                elem.selectionStart = elem.selectionEnd = 10000;
            }, 0);
            var currentValue = $(this).val();
            $(this).val('');
            $(this).val(currentValue);
        });

        // Field Masks
        var behaviorPhone = function (val) {
                return val.replace(/\D/g, '').length === 10 ? '00000-0000' : '00000-0009';
            },
            options = {
                onKeyPress: function (val, e, field, options) {
                    field.mask(behavior.apply({}, arguments), options);
                }
            };

        $('#telefone').mask(behaviorPhone);
        $("#documento").mask("999.999.999-99"); // mascara padrao
        $('#cep').mask('99999-999');

        function limpa_formulário_cep() {
            // Limpa valores do formulário de cep.
            $("#rua").val("");
            $("#bairro").val("");
            $("#cidade").val("");
            $("#uf").val("");
        }


        //Quando o campo cep perde o foco.
        $("#cep").blur(function() {

            //Nova variável "cep" somente com dígitos.
            var cep = $(this).val().replace(/\D/g, '');

            //Verifica se campo cep possui valor informado.
            if (cep != "") {

                //Expressão regular para validar o CEP.
                var validacep = /^[0-9]{8}$/;

                //Valida o formato do CEP.
                if(validacep.test(cep)) {

                    //Preenche os campos com "..." enquanto consulta webservice.
                    // $("#rua").val("...");
                    // $("#bairro").val("...");
                    // $("#cidade").val("...");
                    // $("#uf").val("...");

                    //Consulta o webservice viacep.com.br/
                    $.getJSON("https://viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {

                        if (!("erro" in dados)) {
                            //Atualiza os campos com os valores da consulta.
                            $("#rua").val(dados.logradouro);
                            $("#bairro").val(dados.bairro);
                            $("#cidade").val(dados.localidade);
                            $("#uf").val(dados.uf);
                        } //end if.
                        else {
                            //CEP pesquisado não foi encontrado.
                            limpa_formulário_cep();
                            console.log("CEP não encontrado.");
                        }
                    });
                } //end if.
                else {
                    //cep é inválido.
                    limpa_formulário_cep();
                    console.log("Formato de CEP inválido.");
                }
            } //end if.
            else {
                //cep sem valor, limpa formulário.
                limpa_formulário_cep();
            }
        });
    }

});