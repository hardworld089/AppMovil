class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "1.	Unidad de Procesamiento Central es el núcleo de toda computadora ya que es la que cumple la tarea de procesamiento de todas las funciones, así como también de almacenamiento de la información.",
    [
      Answer("a) CPU", true),
      Answer("b) Procesador", false),
      Answer("c) Monitor", false),
      Answer("d) Memoria RAM", false),
    ],
  ));

  list.add(Question(
    "2.	Se llama así por las siglas en inglés Read Only Memory. Es la memoria de lectura, es decir, los datos grabados pueden ser leídos, pero no pueden ser modificados por el usuario.",
    [
      Answer("a) Disco Duro", false),
      Answer("b) Memoria cache", false),
      Answer("c) Memoria ROM", true),
      Answer("d) Targeta madre", false),
    ],
  ));

  list.add(Question(
    "3.	También conocido como pantalla, muestra la información de tu equipo como imágenes y textos. La función del  este dispositivo  que puedas interactuar con el computador, con la ayuda del ratón y el teclado.",
    [
      Answer("a) CPU", false),
      Answer("b) Memoria cache", false),
      Answer("c) Monitor", true),
      Answer("d) RAM", false),
    ],
  ));

  list.add(Question(
    "La memoria ______ Es utilizada por un procesador para recibir instrucciones y guardar los resultados.",
    [
      Answer("a) SSD", false),
      Answer("b) ROM", false),
      Answer("c) Monitor", false),
      Answer("d) RAM", true),
    ],
  ));

  list.add(Question(
      "5.	Es un dispositivo de entrada que sirve para seleccionar, ejecutar, mover, copiar eliminar, entre otros, elementos en la pantalla de la computadora.",
      [
        Answer("a) Teclado", false),
        Answer("b) Disco Duro", false),
        Answer("c) Raton/Mouse", true),
        Answer("d) Monitor", false),
      ]));

  list.add(Question(
      "6.	Dispositivo de ingreso o entrada de información. Consiste en un conjunto de teclas o botones dispuestos de manera horizontal sobre una lámina, donde actúan como palancas mecánicas o interruptores electrónicos, permitiendo así el ingreso de información codificada al sistema informático por parte del usuario.",
      [
        Answer("a) Teclado", true),
        Answer("b) Disco Duro", false),
        Answer("c) Raton/Mouse", false),
        Answer("d) Monitor", false),
      ]));

  list.add(Question(
      "7.	Es la placa principal en la estructura interna del computador donde se encuentran los circuitos electrónicos, el procesador, las memorias y las conexiones principales.",
      [
        Answer("a) Memoria ROM", false),
        Answer("b) Disco Duro", false),
        Answer("c) Targeta Madre", true),
        Answer("d) Memoria RAM", false),
      ]));

  list.add(Question(
      "8.	Es una capa de almacenamiento de datos de alta velocidad que almacena un subconjunto de datos, normalmente transitorios, de modo que las solicitudes futuras de dichos datos se atienden con mayor rapidez que si se debe acceder a los datos desde la ubicación de almacenamiento principal.",
      [
        Answer("a) Procesador", false),
        Answer("b) Disco Duro", false),
        Answer("c) Monitor", false),
        Answer("d) Memoria Cache", true),
      ]));
  list.add(Question(
      "9.	Es un dispositivo de almacenamiento de datos en los que podemos almacenar cualquier tipo de información digital. Ya sean fotografías, vídeos, archivos de texto o programas informáticos.",
      [
        Answer("a) Disco Duro", true),
        Answer("b) Procesador", false),
        Answer("c) Memoria Cache", false),
        Answer("d) Monitor", false),
      ]));

  list.add(Question(
      "10.	Esta tarjeta logra procesar los datos provenientes del CPU y los transforma en información visual en un dispositivo de salida, como un monitor. Se encarga de procesar aquellos datos provenientes del procesador, entre imágenes y videos que se reproducen en la computadora.",
      [
        Answer("a) Placa de sonido", false),
        Answer("b) Placa de video", true),
        Answer("c) Memoria Cache", false),
        Answer("d) Disco Duro", false),
      ]));

  list.add(Question(
      "11.	Es el cerebro del sistema, justamente procesa todo lo que ocurre en la PC y ejecuta todas las acciones que existen, se encuentra integrado en la placa base.",
      [
        Answer("a) Placa de sonido", false),
        Answer("b) Memoria ROM", false),
        Answer("c) Procesador", true),
        Answer("d) Teclado", false),
      ]));
  list.add(Question(
      "12.	Se encarga de que el sonido pueda ser introducido, pase por un proceso de digitalización de tal manera que comience a procesar en la computadora o el dispositivo y pueda ser exteriorizado en una alta calidad de audio.",
      [
        Answer("a) Placa de sonido", true),
        Answer("c) Procesador", false),
        Answer("d) Teclado", false),
        Answer("b) Memoria ROM", false),
      ]));

  return list;
}
