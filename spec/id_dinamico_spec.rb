# Suite 11, Ids Dinamicos, L!
describe 'Login com Cadastro', :id_dinamicos do

    before(:each) do
        visit '/access'
    end

    2.times do            
        it 'Cadastro' do
        #Usando id completo, L!
        #old find('#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'leandro'
        #old find('#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt').set '123456'
        #old find('#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block').click
        
            #Usando expressao regular, L! | # $ -> termina com | # ˆ -> começa com | # * -> contém
            find('input[id$=UsernameInput]').set 'leandro'  
            #find('input[idˆ=#PasswordInput').set '123456'   
            find('a[id*=GetStartedButton]').click           

            expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
            sleep 3
           end
    end
end

