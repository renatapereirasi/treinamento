Dado('que esteja no site vcmais.com') do
  @treinamento = Texto.new
  @treinamento.load
end

Quando('eu digitar meu e-mail no campo e-mail e clicar em cadastre-se') do
  @treinamento.cadastrar
end

Entao('Verei o loading e a mensagem {string}') do |message_success|
  @success = Texto.new.success_msg
  expect(message_success).to eq(@success.text)
end
