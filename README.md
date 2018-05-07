# desafio_automacao_testes
Repositório o qual contém o desafio de uma automação de testes, feita em Ruby(Capybara) de um 'marketplace'.
# Automacao de Testes do e-commerce das lojas Americanas
## Linguagens Utilizadas 
Ruby e Gherkin.
```
Utilizei o Ruby pois o mesmo é de fácil implementação, rapidez e também é de fácil entendimento a todos. Foi possível utilizar uma ótima IDE para realização
do desenvolvimento(VSCode) otimizando ainda mais o processo de desenvolvimento da automação de testes do e-commerce selecionado. O Gherkin é a linguagem
natural para a realização da escrita dos casos de teste que é interpretada pelo framework Cucumber.
```
## Frameworks Utilizados:  
Capybara, RSpec, Cucumber e Selenium.
```
O Capybara é o framework responsável por
simular as ações reais que um usuário pode fazer ao utilizar o sistema em si, promovendo um grau elevado de acuracidade nos testes feitos. Utilizei o RSpec
para realizar algumas validações de resultados contidos na tela e o Cucumber, como descrito acima, foi o interpretador da linguagem natural Gherkin ou seja,
ele gera os cenários criados a partir dos casos de teste para serem implementados. O Selenium é o responsável por realizar a execução de diversos 
comportamentos no browser(clique, navegação, entre outros).
```
## Estrutura do Projeto
```
Utilizei o cucumber --init para gerar o template da estrutura do projeto. A pasta 'Login' possui a definição de Login de usuário no e-commerce(a mesma 
encontra-se neste lugar para que possa ser reaproveitada no futuro).Criei a pasta 'specifications' a fim de comportar os casos de teste escritos na linguagem 
Gherkin(arquivos .feature). A pasta 'stepdefinitions' possui toda a implementação dos métodos gerados a partir dos casos de teste e o diretório 'support'
contém uma pasta chamada 'config' que guarda um arquivo também do nome 'config'(com a extenção .yaml) o qual possui as variáveis utilizadas na parametrização.
O arquivo 'env'contém as configurações gerais do framework Capybara(driver de acesso ao browser) e o arquivo 'helper' é responsável por executar a ação de 
leitura do arquivo 'config'(já mencionado acima).
```
## Cenários de Teste
A escrita dos cenários de teste foram concebidos através dos fluxos mencionados no desafio. Todas as telas possuem algum tipo de validação, promovendo 
maior exatidão ao acessa-las e todas as validações obrigatórias foram sumariamente respeitadas. Os casos de teste foram escritos da maneira mais enxuta o 
possível para que possam ser reutilizados nos demais processos de desenvolvimento os quais podem ocorrer futuramente. Todos os casos de teste possuem 
comentários para guiar o usuário. Não foi possível realizar a automação dos "reCAPTCHA" da tela de Login(os mesmos aparecem pois se tratam de uma automação de software) porém inseri um comando(sleep) para que o usuário tenha tempo o suficiente para resolver o "reCAPTCHA", depois disso, a automação seguirá normalmente.A escrita e implementação foram feitas na língua inglesa visando projetos de nível internacional.
```
## Como Executar os Cenários de Teste?
Ambiente utilizado: Windows 7-10
Possuir o navegador "Google Chrome" previamente instalado.
Realizar o download da versão (Ruby+Devkit 2.4.4-1) -> https://rubyinstaller.org/downloads/
Instalar o Ruby no Windows.
Executar o comando "gem install bundler" no terminal(cmder(emulador de terminal) por exemplo) para instalação do bundler(http://bundler.io/), o qual faz a instalação das bibliotecas através do arquivo "GemFile" contido no projeto.
Instalar git-scm(https://git-scm.com/download/win) para fazer clone do projeto.
Fazer o download do 'chromedriver'(de acordo com a versão do browser instalado) para realização dos testes.
Colocar o 'chromedriver' baixado no local de sua preferência e configurar a variavel de ambiente PATH apontando para pasta do 'chromedriver'(
Chrome Driver: https://sites.google.com/a/chromium.org/chromedriver/
Chrome Driver: https://chromedriver.storage.googleapis.com/index.html?path=2.35/)
Usando o terminal, fazer o clone do projeto com a seguinte comando na 
pasta da sua preferência:"git clone https://github.com/rpgromero/desafio_automacao_testes.git"
No mesmo terminal, acessar a pasta "desafio_automacao_testes" que contém o projeto baixado do git e executar o comando "bundle install" que realizará a instalação dos pacotes contidos no arquivo GemFile.
Para rodar os testes, executar o comando "cucumber" na pasta do projeto.
```
