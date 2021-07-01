#Suite 3, Combobox - Selecionando opcoes da combobox

describe 'Caixa de Opcoes', :dropdown do

    it 'Item especifico simples' do
        visit '/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3
    end

    it 'Item especifico com o find' do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    #Seleciona de forma aleatoria a opcao da combobox, usando o Sample+SelectOption
    it 'Qualquer Item', :sample do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3 
    end
end