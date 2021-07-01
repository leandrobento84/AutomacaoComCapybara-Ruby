# Suite 6, Upload de arquivos, L!

describe 'Upload', :upload do
    #Massa de Teste
    before(:each) do
        visit '/upload'

        #Variavel de instancia " '@'arquivo " ira armazenar o caminho completo da massa de teste L!
        #Classe "dir" e metodo "pwd", retorna o caminho onde tenho o diretorio de execucao do meu projeto, L!
        @arquivo = Dir.pwd + '/spec/fixtures/Arquivo_11.05.21.txt' #Massa 1
        @imagem = Dir.pwd + '/spec/fixtures/Leao.png' #Massa 2
    end

    it 'Upload com Arquivo Texto' do
        #puts @arquivo
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file') #Fazendo upload do arquivo, L!
        expect(div_arquivo.text).to eql 'Arquivo_11.05.21.txt' #Confirmando o nome do arquivo, L!
    end

    it 'Upload com Imagem', :upload_2 do
        attach_file('file-upload', @imagem)
        click_button 'Upload'
    
        img = find('#new-image') #Fazendo upload da imagem, L!
        expect(img[:src]).to include '/uploads/Leao.png' #Confirmando o nome do arquivo, L!       
    end

    after(:each) do
        sleep 3
    end
end