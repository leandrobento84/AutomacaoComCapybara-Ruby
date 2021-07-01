#Suite X - Login

describe 'Home Page Disys', :Disys do

    #Cenario Login
    it 'Login com Sucesso' do
       #visit '/login'
       visit 'https://brazil.disys.com'

       #fill_in 'username', with: 'stark'
       #fill_in 'password', with: 'jarvis!'

       click_button 'Trabalhe Conosco'
        
       
       #click_link 'Logout'
       sleep 2
    end
end
    