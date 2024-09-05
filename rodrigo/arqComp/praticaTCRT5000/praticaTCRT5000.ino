const int PINO_SENSOR_TCRT5000 = 7; // Declara a váriavel PINO_SENSOR_TCRT5000 sendo 7, 
                                    // fazemos isso para facilitar a compreensão de entrada dentro dos voids,  
                                    // utilizamos "const int" para declarar que essa váriavel é inteira 
                                    // e será apenas lida pelo código e não pode ser alterada posteriormente. 

void setup() { // Função que será executada uma vez quando energizar o Arduino, contém as configurações do código.
  pinMode(PINO_SENSOR_TCRT5000, INPUT); // Declara que PINO_SENSOR_TCRT5000 será uma entrada.
  Serial.begin(9600); // Inicia a comunicação a 9600 bauds.
}

void loop() { // Função que será executada continuamente.
  int estadoSensor = digitalRead(PINO_SENSOR_TCRT5000); // Leitura digital da porta D0


  if( estadoSensor == LOW){ // Se o valor lido pelo sensor for 0 (LOW) (Ele será LOW caso alguma coisa passar na frente do sensor)
    Serial.println(HIGH); // Exibir essa mensagem no monitor serial
    } else { // Se o valor lido for diferente de 0 (1 - HIGH) (Ele será HIGH se nada passar na frente dele)
      Serial.println(LOW); // Exibir essa mensagem no monitor serial 
    }

    delay(1000); // Pausa o código por 1 segundo, iniciando o loop novamente após a contagem do tempo.
}
