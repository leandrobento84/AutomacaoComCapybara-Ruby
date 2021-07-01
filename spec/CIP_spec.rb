#Acessado Site da CIP

describe 'Explorando Site CIP', :CIP do

    #cenario1
    it 'Home Page', :HPCIP do
        visit 'https://www.cip-bancos.org.br/SitePages/Home.aspx'
        sleep 2     
        visit 'https://www.cip-bancos.org.br/Paginas/Sobre.aspx' 
        visit 'https://www.cip-bancos.org.br/Paginas/governanca.aspx'
        visit 'https://www.cip-bancos.org.br/Paginas/Soluções-e-Serviços.aspx'
        visit 'https://www.cip-bancos.org.br/SitePages/Documentos.aspx'
        visit 'https://www.cip-bancos.org.br/SitePages/FaleConosco.aspx'        
    end

    #cenario2
    it 'Pagina Fala Conosco', :FCNC do
        visit 'https://www.cip-bancos.org.br/SitePages/FaleConosco.aspx'
        sleep 2
        
        #within ('#ctl00_PlaceHolderMain_fields') do
            find('#ctl00_PlaceHolderMain_company').set 'teste' 
        #    click_button 'LIMPAR'
            
        #end  
        sleep 1
    end    
      
end