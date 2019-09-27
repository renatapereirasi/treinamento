Dado("que esteja no site painel do médico") do
  @logando = Login.new
  @logando.load
end

Quando("eu fazer o login no site") do
  @logando.logar
end

Entao("terei acesso a tela de consultas") do
  assert_text('Acompanhe as próximas solicitações')
end