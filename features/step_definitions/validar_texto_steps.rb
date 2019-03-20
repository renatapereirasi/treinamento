Dado("que esteja no site vcmais.com") do 
	visit 'https://vcmais.com/'
end

Quando("eu digitar meu e-mail no campo e-mail e clicar em cadastre-se") do
	fill_in('email',:with=>'renata.pereira@vcmais.com')
	click_button('btn-signup')	
end

Entao("Verei o loading e a mensagem {string}") do |mensagem_sucesso|
	assert_text('Em breve, para você.')
	# expect(mensagem).to eq('Em breve, para você.')
end