
## 🛠️ Detalhamento Técnico de Tecnologias


### 🗄️ [MySQL](https://www.mysql.com/)
Sistema de gerenciamento de banco de dados relacional (SGBDR), utilizado como repositório principal dos dados tratados. Permite o armazenamento estruturado e eficiente, além de consultas SQL integradas com outras ferramentas.

- **Instalação:**  
  Baixe o MySQL Server a partir do [MySQL Installer](https://dev.mysql.com/downloads/installer/).

- **Ferramenta recomendada para gerenciamento:**  
  - [MySQL Workbench](https://www.mysql.com/products/workbench/)

- **Criação da Base de Dados do MySQL para receber os dados do SIDRA:**
  - Baixar o arquivo "Script DDL base de dados sidra.sql" do repositório (https://github.com/valdecircarlos/PI_Senac/blob/main/Script%20DDL%20base%20de%20dados%20sidra.sql)
  - Abra o MySQL Workbench
  - Abrir o arquivo "Script DDL base de dados sidra.sql" no botão "Open SQL Script" 
  - Execute os comandos carregados.

---

### 📊 [Power BI](https://powerbi.microsoft.com/)
Ferramenta de visualização de dados utilizada para a criação de dashboards interativos e relatórios dinâmicos. Foi empregada para apresentar visualmente os dados tratados, permitindo uma análise intuitiva e interativa por parte dos usuários finais.

- **Instalação:**  
  Baixe e instale o Power BI Desktop a partir do site oficial ou da Microsoft Store.  
  [[Download Power BI Desktop](https://powerbi.microsoft.com/desktop](https://www.microsoft.com/pt-br/download/details.aspx?id=58494)

- **Principais funcionalidades utilizadas:**  
  - Conexão com fontes de dados MySQL
     *Usando o conector "mysql-connector-net-9.3.0.msi" [Download] (https://dev.mysql.com/downloads/connector/net/)*
  - Criação de medidas DAX  
  - Filtros interativos e segmentações  

---

### 🔄 [Power Query](https://learn.microsoft.com/power-query/)
Ferramenta integrada ao Power BI e ao Excel, utilizada para conectar, transformar e modelar dados. Foi usada no tratamento e na limpeza inicial dos dados, facilitando a preparação para análise.

- **Acesso:**  
  - Integrado ao Power BI Desktop  

- **Principais funcionalidades utilizadas:**  
  - Mesclagem e união de tabelas  
  - Transformações de tipo, filtro e agrupamento  
  - Criação de colunas condicionais  

---

### 🐍 [Python](https://www.python.org/)
Linguagem de programação utilizada para a automação dos processos de **extração**, **transformação** e **integração de dados**. Scripts foram desenvolvidos para conectar a APIs e inserir os dados no banco de dados MySQL.

- **Instalação:**  
  Recomendado instalar via [Python.org](https://www.python.org/downloads/) ou utilizar distribuições como [Anaconda](https://www.anaconda.com/) para ciência de dados.

- **Principais bibliotecas utilizadas:**  
  
  - `requests` para consumo de APIs  
  - `mysql-connector-python` para integração com MySQL
- **Instalação das Bibliotecas no Windows:**
  - Abra o Prompt de Comando do Windows
  - python --version  (para ver a versão do python)
  - python install pandas requests mysql-connector-python
  - python -c "import pandas, requests, mysql.connector; print('Tudo instalado corretamente!')"

- **Consulta Base SIDRA e Gravar os Dados na Base MySQL**
  - Baixar o arquivo "Script DML carregar base sidra_mysql.py" do repositório (https://github.com/valdecircarlos/PI_Senac/blob/main/Script%20DML%20carregar%20base%20sidra_mysql.py)
  - Abra o Prompt de Comando do Windows
  - Acesse o Diretório onde o arquivo de Script "Script DML carregar base sidra_mysql.py" foi salvo.
  - Executar o "Script DML carregar base sidra_mysql.py" no Prompt de comando

---

## 📚 Base de Dados Utilizada

Os dados utilizados neste projeto foram extraídos da **Pesquisa Mensal de Comércio (PMC)** do **IBGE**, por meio do [Sistema IBGE de Recuperação Automática (SIDRA)](https://sidra.ibge.gov.br/). A PMC tem como objetivo acompanhar, mensalmente, o comportamento conjuntural do comércio varejista brasileiro.

### 🔍 Tabelas Selecionadas no SIDRA

As seguintes tabelas foram utilizadas como fonte de dados:

- **Tabela 8880**  
  *Índice e variação da receita nominal e volume de vendas no comércio varejista (2000-2025)*  
  Disponível em: [SIDRA 8880](https://sidra.ibge.gov.br/tabela/8880)

- **Tabela 8881**  
  *Índice e variação do comércio varejista ampliado (2000-2025)*  
  Disponível em: [SIDRA 8881](https://sidra.ibge.gov.br/tabela/8881)

- **Tabela 8882**  
  *Receita nominal e volume de vendas por atividades no comércio varejista (2000-2025)*  
  Disponível em: [SIDRA 8882](https://sidra.ibge.gov.br/tabela/8882)

- **Tabela 8883**  
  *Receita nominal e volume de vendas por atividades no comércio varejista ampliado (2000-2025)*  
  Disponível em: [SIDRA 8883](https://sidra.ibge.gov.br/tabela/8883)

### 📥 Acesso aos Dados

A extração dos dados foi feita de forma automatizada via **API do SIDRA**, utilizando parâmetros personalizados para selecionar as séries temporais de interesse, tais como:

- Nível Territorial por Unidades da Federação;
- Período de 2000 até 2025 (quando disponível);
- Indicadores de receita nominal e volume de vendas;
- Segmentação por atividades do comércio varejista e ampliado.

Mais informações sobre como utilizar a API do SIDRA estão disponíveis na [[documentação oficial](https://servicodados.ibge.gov.br/api/docs/sidra)](https://apisidra.ibge.gov.br/home/ajuda).

---

Essas bases fornecem a sustentação estatística para as análises e visualizações desenvolvidas neste projeto.
