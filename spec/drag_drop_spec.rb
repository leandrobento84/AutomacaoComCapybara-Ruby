# Suite 8, Area que move elemento de uma posicao para outra, L!

describe 'Drag and Drop', :drop do
    before(:each) do
        visit '/drag_and_drop'
    end

    #Massa de Teste
    it 'Home Aranha percente ao time do stark' do
        stark=find('.team-stark .column')
        cap=find('.team-cap .column')

        spiderman = find('img[alt$=Aranha]')
        spiderman.drag_to stark

        expect(stark).to have_css 'img[alt$=Aranha]' #Verifico se contem o css, L!
        expect(cap).not_to have_css 'img[alt$=Aranha]' #Verifico se nao contem o css, L!

        sleep 3
    end

    after(:each) do
        sleep 3
    end
end
