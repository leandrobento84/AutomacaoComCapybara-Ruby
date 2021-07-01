# Suite 7, Efeito ao passar o Mouse na imagem, L!

describe 'Mouse Houver', :houvers do
    #Massa de Teste
    before(:each) do
        visit '/hovers'
    end

        it 'Quando passo o Mouse sobre o Blade' do
            card = find('img[alt*=Blade]') #Utilizando um seletor css "*", L!
            card.hover 

            expect(page).to have_content 'Nome: Blade'
        end

        it 'Quando passo o Mouse sobre o Pantera Negra' do
            card = find('img[altˆ=Pantera Negra]')#Utilizando um seletor css "ˆ", L!
            card.hover 

            expect(page).to have_content 'Nome: Pantera Negra'
        end
    
        it 'Quando passo o Mouse sobre o Homem Aranha' do
            card = find('img[alt$=Homem Aranha]') #Utilizando um seletor css "$", L!
            card.hover 

            expect(page).to have_content 'Nome: Homem Aranha'
        end

    after(:each) do
        sleep 0.5
    end

end