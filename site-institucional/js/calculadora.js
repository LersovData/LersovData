var header = ``;
var conteudo = ``;

// inputs
var mediaPessoas = 0;

var qtdPessoas = 0;
var precoMedio = 0;
var qtdVenda = 0;

function insertDados() {
    mediaPessoas =  Number(input_media.value);
    qtdPessoas = Number(input_qtdPessCorredor.value);
    precoMedio = Number(input_precoMedioCorredor.value);
    qtdVenda = Number(input_vendaCorredor.value);

    console.log(mediaPessoas);
    console.log(qtdPessoas);
    console.log(precoMedio);
    console.log(qtdVenda);
}

function mediaDiaria() {
    header = `
        <div class="container">
            <div id="contHeader">
                <h1>Qual o número médio de clientes que você recebe por dia em seu supermercado?</h1>                    <div id="btn_ms">
                    <input type="text" id="input_media" oninput="insertDados()">
                    <button onclick="corredores()">></button>
                </div>
            </div>
        </div>

        <input type="hidden" id="input_qtdPessCorredor" oninput="insertDados()">
        <input type="hidden" id="input_precoMedioCorredor" oninput="insertDados()">
        <input type="hidden" id="input_vendaCorredor" oninput="insertDados()">
    `;

    cabecalho.innerHTML = header;
}

function corredores() {
    cabecalho.style.height = "25vh";
    areaPrincipal.style.height = "70vh";

    if (mediaPessoas == '' || mediaPessoas == 0) {
        header = `
            <div class="container">
                <div id="contHeader">
                    <h1>Clique nos setores e preencha algumas informações importantes...</h1>
                    <div>
                        <button class="btn2" onclick="resultado()">></button>
                    </div>
                </div>
            </div>
        `;
    } else {
        header =
        `
            <div class="container">
                <div id="contHeader">
                    <h1>Clique nos setores e preencha algumas informações importantes...</h1>
                    <div>
                        <button class="btn2" onclick="resultado()">></button>
                    </div>
                </div>
            </div>
        `;
    }

    conteudo = `
    <div class="areaPrateleira" id="areaPrateleira">
                    <div onclick="setor()" class="prateleira">
                        <div class="titlePrat">
                            <p>Hortifruti</p>
                        </div>

                        <img src="https://png.pngtree.com/png-vector/20240601/ourmid/pngtree-supermarket-with-products-shelves-and-fridges-with-food-stuff-png-image_12590068.png">
                    </div>
                    <div onclick="setor()" class="prateleira">
                        <div class="titlePrat">
                            <p>Massas</p>
                        </div>
                        <img src="https://png.pngtree.com/png-vector/20240601/ourmid/pngtree-supermarket-with-products-shelves-and-fridges-with-food-stuff-png-image_12590068.png">
                    </div>
                    <div onclick="setor()" class="prateleira">
                        <div class="titlePrat">
                            <p>Limpeza</p>
                        </div>
                        <img src="https://png.pngtree.com/png-vector/20240601/ourmid/pngtree-supermarket-with-products-shelves-and-fridges-with-food-stuff-png-image_12590068.png">
                    </div>
                </div>
    `;

    cabecalho.innerHTML = header;
    div_main.innerHTML = conteudo;
}

function setor() {
    cabecalho.style.height = "0px";
    cabecalho.innerHTML = ``;

    areaPrincipal.style.height = "90vh";

    conteudo = `
    <div class="areaPrateleira" id="areaPrateleira">
        <div onclick="corredores()" class="prateleira">
            <div class="titlePrat">
                <p>Hortifruti</p>
            </div>

            <img src="https://png.pngtree.com/png-vector/20240601/ourmid/pngtree-supermarket-with-products-shelves-and-fridges-with-food-stuff-png-image_12590068.png" id="img" height="450px">
        </div>
        <div class="formulario">
                    <h1>Hortifruti</h1>

                    <div class="areaInputs">
                        <p>Quantas pessoas passaram pelo corredor?</p>
                        <input type="text" id="input_qtdPessCorredor" oninput="insertDados()">
                    </div>
                    <div class="areaInputs">
                        <p>Qual o preço médio dos produtos nesse corredor?</p>
                        <input type="text" id="input_precoMedioCorredor" oninput="insertDados()">
                    </div>
                    <div class="areaInputs">
                        <p>Quantos produtos foram vendidos desse corredor?</p>
                        <input type="text" id="input_vendaCorredor" oninput="insertDados()">
                    </div>

                    <button onclick="corredores()">OK</button>
                </div>
        </div>

        <input type="hidden" id="input_media" value="${mediaPessoas}">
    `;

    div_main.innerHTML = conteudo;
}

function resultado() {
    cabecalho.style.height = "0px";
    cabecalho.innerHTML = ``;
    areaPrincipal.style.height = "90vh";

    var mensagem = ``;
    var equivalente = qtdPessoas / mediaPessoas * 100;
    var lucro = precoMedio * qtdVenda;
    var taxaConversao = qtdVenda / precoMedio * 100;

    if (taxaConversao >= 0 && taxaConversao < 25) {
        mensagem += `(conversão <span style="color: red;">baixa</span>). Para que essa taxa seja considerada alta, ela precisa estar entre <b>50% e 75%</b><br>
        <br>
        Aqui estão algumas medidas que você pode tomar com base nisso: <br>
        - Repensar se compensa trabalhar com esse produto caso haja uma média de conversão maior por parte de outros produtos da mesma categoria. <br>
        - Realizar promoções para queima de estoque. <br>
        <br>
        Cuidados a serem tomados: <br>
        - O produto pode estar ocupando o espaço de produtos mais lucrativos. <br>
        - <span style="color: red;">Cuidado!</span> Pode haver perda de produtos por data de validade. <br>
        <br>
        <hr>`
    }
    if (taxaConversao >= 25 && taxaConversao < 50) {
        mensagem += `(conversão <span style="color: orange;">razoável</span>). <br>
        <br>
        <hr>`
    }
    if (taxaConversao >= 50 && taxaConversao < 75) {
        mensagem += `(conversão <span style="color: yellowgreen;">alta</span>).<br>
        <br>
        Atente-se a velocidade de re-estoque deste produto. É um produto <span style="color: green;">muito valioso</span> para manter no supermercado.<br>
        <hr>`
    }
    if (taxaConversao >= 75) {
        mensagem += `(conversão <span style="color: green;">extremamente alta</span>). <br>
        <br>
        O produto é um completo <span style="color: green;">sucesso</span>.
        A marca e o supermercado podem ter muito a ganhar com parcerias para vendas deste produto entre outros.
        <br>
        <hr>`
    }

    conteudo = `
    <div class="fundoResultado">
        <h1>Resultado</h1>

        <p>Com o média diaria de <b>${mediaPessoas}</b> clientes no supermercado</p>

        <p>No corredor de hortifruti, com o fluxo de <b>${qtdPessoas}</b></p>
        <p>O equivalente a ${equivalente}% do valor total do dia</p>

        <p>Gerando o lucro de R$${lucro}</p>

        <p>${qtdVenda} produtos foram vendidos nesse corredor, totalizando uma taxa de conversão de ${taxaConversao}%</p>

        <p>${mensagem}</p>
    
        <div>
            <button onclick="novamente()" class="btn2">Nova consulta</button>
            <button href="index.html" class="btn2">Retornar ao site</button>
        </div>
    </div>
    `;

    div_main.innerHTML = conteudo;
}

function novamente() {
    cabecalho.style.height = "25vh";
    areaPrincipal.style.height = "70vh";

    header =`<div class="container">
                <div>
                    <h1>Calculadora financeira</h1>
                    <button class="btn2" onclick="mediaDiaria()">></button>
                </div>
            </div>`;

    conteudo = ``;

    div_main.innerHTML = conteudo;
    cabecalho.innerHTML = header;
}