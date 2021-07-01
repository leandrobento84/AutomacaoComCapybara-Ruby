# Suite 12, Ids Dinamicos, validando conteudo de cadastros, L!
describe "Tabelas", :tabs, :smoke do
  before(:each) do
    visit "/tables"
  end
  #Cenario Verificar Tabelas, Robert Downey Jr
  #old it "Pega o Tony Stark da lista" do
  #old expect(page).to have_content "Robert Downey Jr"
  #old end

  #Cenario 1
  it "Deve Exibir o salario do stark" do
    atores = all ("table tbody tr")
    stark = atores.detect {|ator| ator.text.include?("Robert Downey Jr")}
    puts stark.text

    expect(stark.text).to include "10.000.000"
    sleep 3
  end
  #Cenario 2
  it 'Deve exibir o Salário do Vin Diesel' do
      diesel = find('table tbody tr', text:'@vindiesel')
      expect(diesel).to have_content '10.000.000'
      sleep 3
  end
  #Cenario 3 - Teste falho, recebe o nome do filme diferente
  it 'Deve exibir o filme Velozes e Furiosos' do
    diesel = find('table tbody tr', text: '@vindiesel')
    movie = diesel.all('td')[2].text

    expect(movie).to eql 'Fast & Furious'
    #old expect(diesel).to have_content 'Velozes e Furiosos'
    sleep 3
  end
  #Cenario 4
  it 'deve exibir instagram do Chris Evans' do
    evans = find('table tbody tr', text: 'Chris Evans')
    insta = evans.all('td')[4].text

    expect(insta).to eql '@teamcevans'
    sleep 2
  end
    #Cenario 5
  it 'Selecionar Chris Pratt para Remoção' do
    pratt = find('table tbody tr', text: 'Chris Pratt')
    pratt.find('a', text: 'delete').click

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
    sleep 2
  end
  #Cenario 6
  it 'Selecionar Chris Pratt para Edicão' do
    pratt = find('table tbody tr', text:'Chris Pratt')
    pratt.find('a', text: 'edit').click

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
    sleep 2
  end
end