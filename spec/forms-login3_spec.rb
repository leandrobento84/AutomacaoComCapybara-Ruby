# Suite 10, logando com codigo dinamico, L!
describe 'Login com Cadastro', :Login3 do

    before(:each) do
        visit '/login'
    end
        #3.times do
            it 'Login Com Sucesso Hahaha', :LoginOk do
            #Trabalhando com elemento escopo, busca no elemento pai
            #old login_form = find('#login')
            #old login_form.find('input[name=username]').set 'stark'
            #old login_form.find('input[name=password]').set 'jarvis!'

                within('#login') do
                    find('input[name=username]').set 'stark'
                    find('input[name=password]').set 'jarvis!'
                    click_button 'Login'  
                    sleep 1            
                end      
                expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
                sleep 1

                #Gera evidencia do teste/tira print da tela
                #page.save_screenshot('log/login_com_sucesso.png')

                click_link 'Logout'
                sleep 1             
            end
        #end 

            #Cenario 01 - Cadastrar Usuário com Sucesso
            it 'Cadastro com Sucesso Hahaha', :Cad_Ok do
                within('#signup') do
                find('input[name=username]').set 'leandro'
                find('input[name=password]').set '123456'
                click_link 'Criar Conta'  
                end 
                expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
                sleep 1        
            end

            #Cenario 02 - Senha Incorreta
            it 'Senha Incorreta Poim!!!', :PassNok do
                visit '/login'

                fill_in 'userId', with: 'stark'
                fill_in 'password', with: 'xpto123'

                click_button 'Login'  

                expect(find('#flash')).to have_content 'Senha é invalida!'
                sleep 1        
                #page.save_screenshot('log/senha_incorreta.png')
            end

            #Cenario 03 - sUsuario Não Cadastrado
            it 'Usuario Não Cadastrado Poim!!!', :UserNoCad do
                visit '/login'

                fill_in 'userId', with: 'flok'
                fill_in 'password', with: 'xpto123'
                click_button 'Login'  
                expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
                sleep 1        

                #page.save_screenshot('log/usuario_nao_cadastrado.png')
            end
           
end