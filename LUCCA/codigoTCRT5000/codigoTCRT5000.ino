const int PINO_SENSOR_TCRT5000 = 7; // Declara a váriavel PINO_SENSOR_TCRT5000 sendo 7, 
                                    // fazemos isso para facilitar a compreensão de entrada dentro dos voids,  
                                    // utilizamos "const int" para declarar que essa váriavel é inteira 
                                    // e será apenas lida pelo código e não pode ser alterada posteriormente. 
int contagemPessoas = 0; // Declara a variável contagemPessoas como 0, que será usada para contar a quantidade de pessoas detectadas pelo sensor


void setup() { // Função que será executada uma vez quando energizar o Arduino, contém as configurações do código.
  pinMode(PINO_SENSOR_TCRT5000, INPUT); // Declara que PINO_SENSOR_TCRT5000 será uma entrada.
  Serial.begin(9600); // Inicia a comunicação a 9600 bauds.
}

void loop() { // Função que será executada continuamente.
  int estadoSensor = digitalRead(PINO_SENSOR_TCRT5000); // Leitura digital da porta D0


  if(estadoSensor == LOW){ // Se o valor lido pelo sensor for 0 (LOW) (Ele será LOW caso alguma coisa passar na frente do sensor)
    contagemPessoas++;       // A contagem aumenta em 1
    Serial.println(contagemPessoas); // Exibe a contagem de pessoas
    } 

    delay(1000); // Pausa o código por 1 segundo, iniciando o loop novamente após a contagem do tempo.
}
