#language: pt

Funcionalidade: Cadastro do usuário
    Sendo um visitante do site
    Posso fazer meu cadastro com nome, email e senha
    Para que eu possa anunciar meu veiculo usado

@sprint1 @smoke
Cenário: Cadastro simples

	Dado que estou na página de cadastro
	Quando faço o meu cadastro com
		| nome  | Fernando                 |
		| email | papito@ninjahouse.com.br |
		| senha | 123456                   |
	Então sou autenticado com sucesso

@temp
Esquema do Cenário: Tentativa de cadastro

	Dado que estou na página de cadastro
	Quando faço o meu cadastro com
		| nome  | <nome>  |
		| email | <email> |
		| senha | <senha> |
	Então devo ver a mensagem "<alerta>"

    Exemplos: 
      | nome     | email         | senha  | alerta                                  |
      | Fernando | eu#papito.io  | 123456 | Email inválido.                         |
      | Fernando | eu@papito.net |        | Senha não informada.                    |
      |          | eu@papito.com | 123456 | Nome não informado.                     |
      | Fernando | eu@papito.com | 12345  | Senha deve ter pelo menos 6 caracteres. |

