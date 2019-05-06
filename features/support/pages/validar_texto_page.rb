# Classe para validar o texto
class Texto < SitePrism::Page
  set_url 'https://vcmais.com/'

  element :email_txt, '#email'
  element :email_msg, 'input#email.valid'
  element :clicar_btn, '#btn-signup'
  element :success_msg, '.animated.fadeInUp.success'

  def cadastrar
    email_txt.set 'email@email.com'
    page.has_content?(email_msg)
    click_btn.click
  end
end
