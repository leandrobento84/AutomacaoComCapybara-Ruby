# Suite 9, logando com codigo dinamico, L!
describe 'Login2', :login2, :smoke do

    before(:each) do
        visit '/login2'
    end

    it 'Com Data de Nascimento' do
       find('#userId').set 'stark'
       find('#passId').set 'jarvis!'

       login_form = find('#login') 

       case login_form.text
        when /Dia/
            find('#day').set '29'
        when /Mês/
            find('#month').set '05'
        when /Ano/
            find('#year').set '1970'          
       end   

        click_button 'Login'     
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        sleep 3
    
        #click_link ' Logout'     
        #expect(find('#flash')).to have_content 'Bem-vindo à área logada. Quando terminar, clique em logout.'
        #sleep 2
    end
end