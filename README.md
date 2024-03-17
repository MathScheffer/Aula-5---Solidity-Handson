- Ideia

  Contrato

  - Armazenar um valor (true ou false)
  - Qualquer pessoa possa ver o valor
  - Qualquer pessoa alterar o valor

Compilar projeto:

    `forge b`

Executar os testes do projeto

    `forge test`

Executar o contrato (fora da blockchain)

    `forge script script/Flipper.s.sol:FlipperScript`

ps: Fornece o endereço do contrato, bem como a taxa de Gas utilizada

Criando blockchain local

    `anvil`

Criando blockchain que minera blocos a cada 5 segundos

    `anvil -b 5`

## Executando o contrato dentro da blockchain

1.  Em posse da chave privada de um usuário, colocar dentro do startBroadcast
2.  Rodar o comando abaixo:

    forge script script/Flipper.s.sol:FlipperScript \
     --rpc-url “http://127.0.0.1:8545” \
     --broadcast

## Interagindo com o contrato

    cast call --private-key <chave privada do usuario> --rpc-url "<endereço da blockchain criada>"  "<endereço do contrato>" "<chamada da funcao>(<tipo de dado do retorno>)"

Exemplo:

    cast call --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url "http:\\127.0.0.1:8545" "0x5FbDB2315678afecb367f032d93F642f64180aa3" "getValue()(bool)"
