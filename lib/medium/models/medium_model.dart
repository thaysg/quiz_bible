var score = 0;
var questionNumber = 0;
var mediumQuiz = MediumQuiz();

class MediumQuiz {
  List<String> questions = [
    '1- A qual tribo Paulo pertencia?',
    '2- Qual o nome da única filha de Jacó?',
    '3- A qual tribo Josué pertencia?',
    '4- Qual filho de Jacó foi vendido por seus irmãos?',
    '5- Qual o nome do ladrão que foi solto pelo povo no lugar de Jesus?',
    '6- Em qual ilha João ficou preso quando escreveu o livro de Apocalipse?',
    '7- Qual nome do casal que mentiu ao Espírito Santo e morreu?',
    '8- Que animal falou com Balaão?',
    '9-  Quem foi o pai de Sem, Cam e Jafé?',
    '10- Qual o nome da mãe de Samuel',
    '11- A benção que era de Manassés, Jacó deu a quem?',
    '12- Qual profeta fez um machado flutuar?',
    '13- Atacaram dois "rapazinhos" de Betel por zombarem do profeta Eliseu:',
    '14- Elifaz, Bildade, Zofar e Eliú são personagens de qual livro?',
    '15-  Quem disse: "Eis-me aqui, envia-me a mim"?',
    '16- O que significa "talita cumi"?',
    '17- Qual dos evangelhos inicia-se narrando fatos relacionados a vida dos pais de João Batista?',
    '18- Qual era o nome do deus pagão atribuído a Barnabé?',
    '19- Qual era o nome do deus pagão atribuído a Paulo?',
    '20- Malom e Quilom foram filhod fe que casal?'
  ];

  var choices = [
    [
      'Benjamim',
      'Judá',
      'Efraim',
      'Ur',
    ],
    [
      'Diná',
      'José',
      'Benjamim',
      'Rebeca',
    ],
    [
      'Benjamim',
      'Judá',
      'Efraim',
      'Levi',
    ],
    [
      'Ruben',
      'Judá',
      'José',
      'Benjamim',
    ],
    [
      'José',
      'Nicodemos',
      'Não falam seu nome',
      'Barrabás',
    ],
    [
      'Malvinas',
      'Patmos',
      'Creta',
      'Éfeso',
    ],
    [
      'Ananias e Safira',
      'Jacó e Raquel',
      'Isaque e Rebeca',
      'Sansão e Dalila',
    ],
    [
      'Jumenta',
      'Camelo',
      'Cordeiro',
      'Pomba',
    ],
    [
      'Abraão',
      'Noé',
      'Davi',
      'Matusalém',
    ],
    [
      'Penina',
      'Ana',
      'Raquel',
      'Rebeca',
    ],
    [
      'Efraim',
      'José',
      'Esaú',
      'Judá',
    ],
    [
      'Elias',
      'Eliseu',
      'Isaías',
      'Jeremias',
    ],
    [
      '2 ursa',
      '2 leoas',
      '2 víboras',
      '2 leões',
    ],
    [
      'Jonas',
      'Jó',
      'Esdras',
      'Ester',
    ],
    [
      'Jonas',
      'Jeremias',
      'Paulo',
      'Isaías',
    ],
    [
      'Pesado foi teu reino',
      'Saia daqui',
      'Menina, levante-se',
      'Talita, venha aqui',
    ],
    [
      'Mateus',
      'Marcos',
      'Lucas',
      'João',
    ],
    [
      'Marte',
      'Mercúrio',
      'Plutão',
      'Júpiter',
    ],
    [
      'Mercúrio',
      'Marte',
      'Plutão',
      'Júpiter',
    ],
    [
      'Elimeleque e Noemi',
      'Ananias e Safira',
      'Anrão e Joquebede',
      'Abraão e Sara',
    ],
  ];

  var correctAnswer = [
    'Benjamim',
    'Diná',
    'Efraim',
    'José',
    'Barrabás',
    'Patmos',
    'Ananias e Safira',
    'Jumenta',
    'Noé',
    'Ana',
    'Efraim',
    'Eliseu',
    '2 ursa',
    'Jó',
    'Isaías',
    'Menina, levante-se',
    'Lucas',
    'Júpiter',
    'Mercúrio',
    'Elimeleque e Noemi',
  ];
}
