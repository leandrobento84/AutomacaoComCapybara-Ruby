#Acessando Site Meu Movel de Madeira

describe 'Site Meu Movel de Madeira', :mmm do

    before(:each) do
        visit 'https://www.meumoveldemadeira.com.br/login_LoginLoja.html'    
    end

    it 'Verificando carrinho' do
    #visit 'https://www.meumoveldemadeira.com.br/?gclid=Cj0KCQjws-OEBhCkARIsAPhOkIawIKEBQWwK1oEqJGMB7J1aDLye7b-4b-FS_hi7JJJm0M-dzTHsOi4aAoLqEALw_wcB'
    #click_button 'username'
    driver.switch_to.alert.dimiss

    fill_in 'login', with: '31318143810'
    fill_in 'senha', with: 'Proceder84'
    sleep 5    

        it 'Desmarcando uma Opcao -- Mantenha-me conectado' do
            uncheck ('manter')
        end
    
    click_button 'continuar'

    after(:each) do
        sleep 5
    end
end

end