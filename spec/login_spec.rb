#Suite 2 - Login

describe 'Primeiro Login', :login1, :smoke do

    #Cenario Login
    it 'Login com Sucesso' do
       #visit '/login'
       visit 'https://www.cip-bancos.org.br/SitePages/Home.aspx'

       fill_in 'username', with: 'stark'
       fill_in 'password', with: 'jarvis!'

       click_button 'Login'

       #verifica se o elemento "flash" (via jqueryque) que representa o login com sucesso existe.
       expect(find('#flash').visible?).to be true

       #Valida a mensagem "Olá, Tony Stark. Você acessou a área logada!" e exibida apos o login com sucesso L!
       #expect(find('#flash').text).to eql 'Olá, Tony Stark. Você acessou a área logada!'

       #Valida a mensagem "Olá, Tony Stark. Você acessou a área logada!" e exibida apos o login com sucesso L!
       expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
       sleep 2
       
       click_link 'Logout'
       sleep 2
    end
end
    