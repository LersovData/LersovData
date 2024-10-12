// inputs
var mediaPessoas = 0;

//hortifruti
var qtdPessoasHorti = 0;
var precoMedioHorti = 0;
var qtdVendaHorti = 0;

//massas
var qtdPessoasMassas = 0;
var precoMedioMassas = 0;
var qtdVendaMassas = 0;

//massas
var qtdPessoasLimp = 0;
var precoMedioLimp = 0;
var qtdVendaLimp = 0;

function insertDados() {
    mediaPessoas =  Number(input_media.value);

    qtdPessoasHorti = Number(input_qtdPessCorredorHorti.value);
    precoMedioHorti = Number(input_precoMedioHortiCorredor.value);
    qtdVendaHorti = Number(input_vendaCorredorHorti.value);

    qtdPessoasMassas = Number(input_qtdPessCorredorMassas.value);
    precoMedioMassas = Number(input_precoMedioMassasCorredor.value);
    qtdVendaMassas = Number(input_vendaCorredorMassas.value);

    qtdPessoasLimp = Number(input_qtdPessCorredorLimp.value);
    precoMedioLimp = Number(input_precoMedioLimpCorredor.value);
    qtdVendaLimp = Number(input_vendaCorredorLimp.value);
}

function mediaDiaria() {
    div_inicio.style.display = "none";
    div_totalPessoas.style.display = "block";
    
    div_corredores.style.display = "none";
    div_corredorHortifruti.style.display = "none";
    div_corredorMassas.style.display = "none";
    div_corredorLimpeza.style.display = "none";

    div_resultado.style.display = "none";
}

function corredores() {
    if (mediaPessoas > 0) {
        div_totalPessoas.style.display = "none";
        div_corredores.style.display = "block";
    }
}

function setor() {
    if (qtdPessoasHorti == 0 && precoMedioHorti == 0 && qtdVendaHorti == 0) {
        div_corredores.style.display = "none";
        div_corredorHortifruti.style.display = "block";
    }
}

function setor1() {
    if (qtdPessoasHorti == 0 && precoMedioHorti == 0 && qtdVendaHorti == 0) {
        div_corredores.style.display = "none";
        div_corredorMassas.style.display = "block";
    }
}

function setor2() {
    if (qtdPessoasHorti == 0 && precoMedioHorti == 0 && qtdVendaHorti == 0) {
        div_corredores.style.display = "none";
        div_corredorLimpeza.style.display = "block";
    }
}

function resultado() {
    div_corredores.style.display = "none";
    div_resultado.style.display = "block";

    var equivalenteHorti = qtdPessoasHorti / mediaPessoas * 100;
    var lucroHorti = precoMedioHorti * qtdVendaHorti;
    var taxaConversaoHorti = qtdVendaHorti / qtdPessoasHorti * 100;
    var fluxoHorti = (qtdPessoasLimp / mediaPessoas) * 100;

    var equivalenteMassas = qtdPessoasMassas / mediaPessoas * 100;
    var lucroMassas = precoMedioMassas * qtdVendaMassas;
    var taxaConversaoMassas = qtdVendaMassas / qtdPessoasMassas * 100;
    var fluxoMassas = (qtdPessoasLimp / mediaPessoas) * 100;

    var equivalenteLimp = qtdPessoasLimp / mediaPessoas * 100;
    var lucroLimp = precoMedioLimp * qtdVendaLimp;
    var taxaConversaoLimp = qtdVendaLimp / qtdPessoasLimp * 100;
    var fluxoLimp = (qtdPessoasLimp / mediaPessoas) * 100;
    
    var mensagemHorti = ``;
    var mensagemMassas = ``;
    var mensagemLimp = ``;

    var convBaixa = `(conversão <span style="color: red;">baixa</span>). Para que essa taxa seja considerada alta, ela precisa estar entre <b>50% e 75%</b>`;
    var convRazo = `(conversão <span style="color: orange;">razoável</span>).`;
    var convAlta = `(conversão <span style="color: yellowgreen;">alta</span>).`;
    var convExtAlta = `(conversão <span style="color: green;">extremamente alta</span>).`;

    if ((taxaConversaoHorti >= 0 && taxaConversaoHorti < 25) || (taxaConversaoMassas >= 0 && taxaConversaoMassas < 25) || (taxaConversaoLimp >= 0 && taxaConversaoLimp < 25) ) {
        mensagemHorti += convBaixa;

    } else if ((taxaConversaoHorti >= 25 && taxaConversaoHorti < 50) || (taxaConversaoMassas >= 25 && taxaConversaoMassas < 50) || (taxaConversaoLimp >= 25 && taxaConversaoLimp < 50)) {
        mensagemHorti += convRazo;

    } else if ((taxaConversaoHorti >= 50 && taxaConversaoHorti < 75) || (taxaConversaoMassas >= 50 && taxaConversaoMassas < 75) || (taxaConversaoLimp >= 50 && taxaConversaoLimp < 75)) {
        mensagemHorti += convAlta;

    } else if (taxaConversaoHorti >= 75 || taxaConversaoMassas >= 75 || taxaConversaoLimp >= 75) {
        mensagemHorti += convExtAlta;

    }

    if (taxaConversaoMassas >= 0 && taxaConversaoMassas < 25) {
        mensagemMassas += convBaixa;

    } else if (taxaConversaoMassas >= 25 && taxaConversaoMassas < 50) {
        mensagemMassas += convRazo;

    } else if (taxaConversaoMassas >= 50 && taxaConversaoMassas < 75) {
        mensagemMassas += convAlta;

    } else if (taxaConversaoMassas >= 75) {
        mensagemMassas += convExtAlta;
        
    }

    if (taxaConversaoLimp >= 0 && taxaConversaoLimp < 25) {
        mensagemLimp += convBaixa;

    } else if (taxaConversaoLimp >= 25 && taxaConversaoLimp < 50) {
        mensagemLimp += convRazo;

    } else if (taxaConversaoLimp >= 50 && taxaConversaoLimp < 75) {
        mensagemLimp += convAlta;

    } else if (taxaConversaoLimp >= 75) {
        mensagemLimp += convExtAlta;

    }

    if (taxaConversaoMassas > taxaConversaoHorti && qtdPessoasMassas < qtdPessoasHorti) {
        mensagemMassas += `<br>(fluxo hortifruti: ${fluxoHorti}%) - mudar seus produtos de massas para o corredor de hortifruti deve potencializar suas vendas!`;
    } else if (taxaConversaoMassas > taxaConversaoLimp && qtdPessoasMassas < qtdPessoasLimp) {
        mensagemMassas += `<br>(fluxo limpeza: ${fluxoLimp}%) - mudar seus produtos de massas para o corredor de limpeza deve potencializar suas vendas!`;
    } else if ((taxaConversaoMassas > taxaConversaoLimp || taxaConversaoHorti) && (qtdPessoasMassas > qtdPessoasHorti || qtdPessoasLimp)) {
        mensagemMassas += `<br>(fluxo massas: ${fluxoMassas}%) - Seu corredor está muito bem`;
    }
    
    if (taxaConversaoHorti > taxaConversaoLimp && qtdPessoasHorti < qtdPessoasLimp) {
        mensagemHorti += `<br>(fluxo limpeza: ${fluxoLimp}%) - mudar seus produtos de hortifruti para o corredor de limpeza deve potencializar suas vendas!`;
    } else if (taxaConversaoHorti > taxaConversaoMassas && qtdPessoasHorti < qtdPessoasMassas) {
        mensagemHorti += `<br>(fluxo massas:${fluxoMassas}%) - mudar seus produtos de hortifruti para o corredor de hortifruti deve potencializar suas vendas!`;
    } else if ((taxaConversaoHorti > taxaConversaoLimp || taxaConversaoMassas) && (qtdPessoasMassas > qtdPessoasHorti || qtdPessoasLimp)) {
        mensagemHorti += `<br>(fluxo hortifruti: ${fluxoHorti}%) - Seu corredor está muito bem`;
    }

    if (taxaConversaoLimp > taxaConversaoHorti && qtdPessoasLimp < qtdPessoasHorti) {
        mensagemLimp += `<br>(fluxo hortifruti: ${fluxoHorti}%) - mudar seus produtos de limpeza para o corredor de hortifruti deve potencializar suas vendas!`;
    } else if (taxaConversaoLimp > taxaConversaoMassas && qtdPessoasLimp < qtdPessoasMassas) {
        mensagemLimp += `<br>(fluxo massas: ${fluxoMassas}%) - mudar seus produtos de limpeza para o corredor de massas deve potencializar suas vendas!`;
    }

    conteudo = `
    <div class="fundoResultado">
        <h1>Resultado</h1>

        <p>Com o média diaria de <b>${mediaPessoas}</b> clientes no supermercado</p>

        <p>No corredor de hortifruti, com o fluxo de <b>${qtdPessoasHorti}</b></p>
        <p>O equivalente a ${equivalenteHorti}% do valor total do dia</p>

        <p>Gerando o lucro de R$${lucroHorti}</p>

        <p>${qtdVendaHorti} produtos foram vendidos nesse corredor, totalizando uma taxa de conversão de ${taxaConversaoHorti}%</p>
        
        <br>

        <p>
            Horti:${mensagemHorti}<br>
            Massas:${mensagemMassas}<br>
            Limpeza:${mensagemLimp}<br>
        </p>
    
        <div>
            <button onclick="novamente()" class="btn2">Nova consulta</button>
            <a href="index.html"><button class="btn2">Retornar ao site</button></a>
        </div>
    </div>
    `;

    div_mainResultado.innerHTML = conteudo;
}

function novamente() {
    div_resultado.style.display = "none";
    div_inicio.style.display = "block";

    input_media.value = ``;
    input_qtdPessCorredorHorti.value = ``;
    input_precoMedioHortiCorredor.value = ``;
    input_vendaCorredorHorti.value = ``;

    input_qtdPessCorredorMassas.value = ``;
    input_precoMedioMassasCorredor.value = ``;
    input_vendaCorredorMassas.value = ``;

    input_qtdPessCorredorLimp.value = ``;
    input_precoMedioLimpCorredor.value = ``;
    input_vendaCorredorLimp.value = ``;
}