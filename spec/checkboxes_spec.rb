#Suite 4 (CheckBox), selecionando opcoes da checkbox

describe 'Caixa de Selecao', :checkbox do
    #usando o before+each para acessar a pagina.
    before(:each) do
        visit '/checkboxes'
    end

    it 'Marcando uma Opcao' do
        check('thor')
    end

    it 'Desmarcando uma Opcao' do
        uncheck ('antman')
    end

    it 'Desmarcando com find set true' do
        find('input[value=cap]').set(true)
    end

    it 'Desmarcando com find set false' do
        find('input[value=guardians]').set(false)
    end

    after(:each) do
        sleep 5
    end

end