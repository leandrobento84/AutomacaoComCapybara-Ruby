#Suite 5, Radio Button

describe 'Botoes de Radio', :radio do
    #usando o before+each para acessar a pagina.
    before(:each) do
        visit '/radios'
    end

    it 'Selecionar por ID' do
        choose('cap')
    end

    it 'Selecionar por find e css selector' do
        find('input[value=guardians]').click
    end

    after(:each) do
        sleep 5
    end

end