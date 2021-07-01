#Acessado Site da CIP

describe 'Explorando Site CIP', :CIP do

    #cenario1
    it 'Home Page', :INM do
        visit 'https://inmetrics.com.br'
        sleep 2     
               
    end

    #cenario2
    #2.times
    it 'Pagina Fala Conosco', :faleconosco do
        visit 'https://inmetrics.com.br'
        sleep 1
        
        click_link 'linkcontato'
        #within ('#ctl00_PlaceHolderMain_fields') do
        fill_in 'nome', with: 'QA Massa'
        fill_in 'empresa', with: 'ZerU Bugs'
        fill_in 'cargo', with: 'Hunter Bugs'
        fill_in 'telefone', with: '11 1234-6547'
        fill_in 'email', with: 'teste@test.io'
        fill_in 'mensagem', with: 'Estamos por aqui Sim \o/'
         
        page.save_screenshot('log/test_inmetrics/TelaFaleConosco.png')

        #click_button 'enviar'
    #end  
        sleep 1
    end    
      
end