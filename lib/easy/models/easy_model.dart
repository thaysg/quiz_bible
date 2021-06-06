var score = 0;
var questionNumber = 0;
var easyQuiz = EasyQuiz();

class EasyQuiz {
  List<String> questions = [
    '1- Qual o nome do primeiro casal criado por Deus?',
    '2- O que Noé construiu?',
    '3- Qual foi o sinal que Deus deu a Noé, como promessa de não mais destruir a terra com água?',
    '4- Quem derrotou Golias?',
    '5- Quais alimentos Jesus multiplicou?',
    '6- Quantos eram os discípulos de Jesus?',
    '7- Qual o primeiro livro da Bíblia?',
    '8- Em qual livro bíblico está escrito o versículo: "O Senhor é o meu pastor, nada me faltará"?',
    '9- Qual é o último livro da Bíblia?',
    '10- Quem ficou 3 dias na barriga de um grande peixe?'
  ];

  var choices = [
    [
      'José e Maria',
      'Ananias e Safira',
      'Adão e Eva',
      'Sansão e Dalila',
    ],
    [
      'Uma torre',
      'Um altar',
      'Uma arca',
      'o Templo',
    ],
    [
      'Arco-íris',
      'Cruz',
      'Bezerro de ouro',
      'Castiçal',
    ],
    [
      'Saul',
      'Samuel',
      'Josué',
      'Davi',
    ],
    [
      'Bolos e frutas',
      'Pães e peixes',
      'Pão e vinho',
      'Pão e azeite',
    ],
    [
      '12',
      '15',
      '6',
      '10',
    ],
    [
      'Apocalipse',
      'Gênesis',
      'Mateus',
      'Salmos',
    ],
    [
      'Mateus 28:1',
      'Salmos 23:1',
      'Salmos 91:5',
      'Salmos 119:105',
    ],
    [
      'Apocalipse',
      'Gênesis',
      'Mateus',
      'Salmos',
    ],
    [
      'Jonas',
      'José',
      'Mateus',
      'Josué',
    ],
  ];

  var correctAnswer = [
    'Adão e Eva',
    'Uma arca',
    'Arco-íris',
    'Davi',
    'Pães e peixes',
    '12',
    'Gênesis',
    'Salmos 23:1',
    'Apocalipse',
    'Jonas',
  ];
}
