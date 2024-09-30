document.getElementById('open-btn').addEventListener('click', function(){
  document.getElementById('sidebar').classList.toggle('open-sidebar');
});







//setup
const dataGraficoStepped = {
    labels: ['Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo'],
    datasets: [
      {
        label: 'Dataset',
        data: [14, 25, 60, 20, 100, 40, 74],
        fill: false,
        stepped: true,
      }
    ]
  };

const DATA_COUNT = 5;
const NUMBER_CFG = {count: DATA_COUNT, min: 0, max: 100};

const dataGraficoDoughnut = {
  labels: ['Corredor 1', 'Corredor 2', 'Corredor 3', 'Corredor 4', 'Corredor 5'],
  datasets: [
    {
      label: 'Dataset 1',
      data: [23, 45, 32, 11, 70]
    }
  ]
};

//config
const config3 = {
    type: 'line',
    data: dataGraficoStepped,
    options: {
      responsive: true,
      interaction: {
        intersect: false,
        axis: 'x'
      },
      plugins: {
        title: {
          display: true,
          text: (ctx) => 'Step ' + ctx.chart.data.datasets[0].stepped + ' Interpolation',
        }
      }
    }
  };

  const config4 = {
    type: 'doughnut',
    data: dataGraficoDoughnut,
    options: {
      responsive: true,
      plugins: {
        legend: {
          position: 'top',
        },
        title: {
          display: true,
          text: 'Doughnut Chart'
        }
      }
    },
  };

// render
var meuGraficoStepped = new Chart(
    document.getElementById('graficoStepped'),
    config3
);

var meuGraficoDoughnut = new Chart(
    document.getElementById('graficoDoughnut'),
    config4
);