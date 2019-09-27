#language: pt
#utf-8
Funcionalidade: Login
	Eu como medico da Docway
	Quero acessar o painel médico
	Para aceitar atendimento de uma consulta médica

Cenario: Login no painel médico.
    Dado que esteja no site painel do médico
	Quando eu fazer o login no site
	Entao terei acesso a tela de consultas