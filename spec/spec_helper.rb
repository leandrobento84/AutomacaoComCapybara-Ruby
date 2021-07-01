#arquivo iniciado atraves do comando "rspec --init"

require "capybara"
require "capybara/rspec"
require "selenium-webdriver"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
    config.include Capybara::DSL

    config.before(:example) do 
      #page.current_window.resize_to(1920,1080) #define a resolucao da tela, L!
      page.current_window.resize_to(1600,900) #define a resolucao da tela, L!
  end

  config.after(:example) do |e|
    nome = e.description.gsub(/[^A-Za-z0-9]/, '').tr('', '') #Expressao Regular substitui caractere especial por nada, e o tr substitui os espacos em branco por anderlineL!
    page.save_screenshot('log/' + nome + '.png') #if e.exception "Com este if o script ira tirar print so do caso que falar "
    puts e.exception
  end

end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome #Rodando com navegador Google Chrome
  #config.default_driver = :selenium_chrome_headless #Rodando sem levantar o navegador/janela (em headless)
  config.default_max_wait_time = 5 #Aguarda ate 5 segundos para encontrar um elemento, L!
  config.app_host = 'https://training-wheels-protocol.herokuapp.com' # URL padrao utilazada nos scripts
end