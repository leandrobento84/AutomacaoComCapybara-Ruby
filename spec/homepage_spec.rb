    #Suite 1
    
    describe 'Scripts Ruby ... Acess Home Page!!!', :homepage do

        it 'Acessar a Pagina Inicial XPTO3' do
        
            #Faz acesso ao site
            visit '/'
            
            #Valida o titulo da pagina de forma mais simples L!
            #puts page.title

            #Valida o titulo da pagina de forma mais especifica L!
            expect(page.title).to eql 'Training Wheels Protocol'
            sleep 2

            #Faz acesso ao site    
            visit 'https://cyclo.36zero.com.br/Dashboard/Diagnostics'
            #visit 'https://github.com'
            sleep 2
            
            #Faz acesso ao site -- Mapeamento Corona Virus no Mundo -- L!
            #visit 'https://gisanddata.maps.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6'
            #puts page.title
            end
    end     
