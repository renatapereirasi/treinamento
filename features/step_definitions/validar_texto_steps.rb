Dado('que esteja no site vcmais.com') do
  @treinamento = Texto.new
  @treinamento.load
end

Quando('eu digitar meu e-mail no campo e-mail e clicar em cadastre-se') do
  @treinamento.cadastrar
end

Entao('Verei o loading e a mensagem {string}') do |mensagem_sucesso|
  @sucesso = Texto.new.sucesso_msg
  expect(mensagem_sucesso).to eq(@sucesso.text)
end
