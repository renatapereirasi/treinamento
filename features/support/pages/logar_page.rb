      class Login < SitePrism::Page
  set_url 'https://stage-doctor.docway.com.br/Auth/Login'

  element :email_txt, '#txtUser'
  element :password_text, '#txtpass'
  element :login_btn, '#btnEntrar'

  def logar
    email_txt.set 'dr.docway@docway.co'
    password_text.set 'docWay@2017'
    login_btn.click
  end
end
