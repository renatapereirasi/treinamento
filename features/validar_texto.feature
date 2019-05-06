#language: pt
#utf-8
Funcionalidade: Validar texto
	Eu como usuário do site vcmais.com
	Quero me cadastrar no site vcmais.com
	Para verificar a frase de bem vindo

Cenario: Validar texto Em breve para voce.
    Dado que esteja no site vcmais.com
	Quando eu digitar meu e-mail no campo e-mail e clicar em cadastre-se
	Entao Verei o loading e a mensagem "Em breve, para você."