# Suite 9, Simulando teclas do teclado, L!

describe 'Teclado', :key do
    before(:each) do
        visit '/key_presses'
    end

    it 'Enviando Teclas' do
        teclas = %i[tab escape space enter shift control alt]
        
        teclas.each do |t| #array de teclas
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase #convertendo em caixa baixa, L!
            sleep 3
        end
    end

    it 'Enviando Letras', :letras do
        letras = %w[a s d f g h j k l] 

        letras.each do |l| #array de letras
                find('#campo-id').send_keys l
                expect(page).to have_content 'You entered: ' + l.to_s.upcase #convertendo em caixa baixa, L!
                sleep 3
        end
     end

     it 'Enviando Numeros', :numeros do
        numeros = %w[1 2 3 4 5 6 7] 

        numeros.each do |n| #array de letras
                find('#campo-id').send_keys n
                expect(page).to have_content 'You entered: ' + n.to_s.upcase #convertendo em caixa baixa, L!
                sleep 3
        end
     end


end
