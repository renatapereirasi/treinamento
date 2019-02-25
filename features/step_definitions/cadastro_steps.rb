Dado("que eu esteja na pagina da loja Automation Practice") do
	visit 'http://automationpractice.com'
end

Quando("eu efetuar o cadastro com sucesso") do
	find('a.login').click
	fill_in('email_create',:with=>'yodinha3@mailinator.com')
	click_button('SubmitCreate')
	assert_text('CREATE AN ACCOUNT')
	fill_in('customer_firstname',:with=>'Renata')
	fill_in('customer_lastname',:with=>'Pereira')
	fill_in('passwd',:with=>'Teste123')
	fill_in('firstname',:with=>'Jim')
	fill_in('lastname',:with=>'Morrison')
	fill_in('address1',:with=>'Av Rotary 600')
	fill_in('city',:with=>'São Bernardo do Campo')
	find(".id_state option[value='10']").select_option  
	fill_in('postcode',:with=>'09721')
	fill_in('other',:with=>'05511976258935')
	fill_in('phone',:with=>'5511971945915')
	fill_in('phone_mobile',:with=>'5549306003')
	click_button('submitAccount')
end

Entao("as informações cadastradas serão exibidas") do
  	click_link('My personal information')
  	assert_text('YOUR PERSONAL INFORMATION')
end

Dado("que eu esteja logado com usuário válido no site Automation Practice") do
  	#login
  	visit'http://automationpractice.com'
  	find('a.login').click
  	assert_text('Authentication')
  	find('#email').set('yodinha3@mailinator.com')
  	fill_in('passwd',:with=>'Teste123')
  	click_button('SubmitLogin')
end
  


Quando("acessar e editar as informações pessoais") do	
	#editando
	click_link('My personal information')
	#find(".id_gender2[value='Mrs.']").select_option 
	find(".id_gender2[value='label.top.']").select_option 
end

Entao("verei a mensagem {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
