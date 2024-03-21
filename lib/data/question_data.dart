import 'package:question_app/models/question.dart';

const questions = [
  Question(
    question:
    "Aşağıdakilerden hangisi flutterda state'i update eden fonksiyondur?",
    answers: ["setState", "constructor", "readState", "writeState"],
    correctAnswer: "setState",
  ),
  Question(
    question: "Flutter hangi dili kullanır?",
    answers: ["dart", "javascript", "c#", "java"],
    correctAnswer: "dart",
  ),
  Question(
    question:
    "Flutter'da bir widget'i merkeze hizalamak için hangi widget kullanılır?",
    answers: ["Center", "Align", "Container", "Padding"],
    correctAnswer: "Center",
  ),
  Question(
    question:
    "Flutter'da stateless widget ve stateful widget arasındaki fark nedir?",
    answers: [
      "Stateless widget durumu saklamaz, Stateful widget saklar",
      "Stateful widget daha performanslıdır",
      "Stateful widget statik verileri gösterir",
      "Stateless widget dinamik verileri gösterir"
    ],
    correctAnswer: "Stateless widget durumu saklamaz, Stateful widget saklar",
  ),
  Question(
    question: "Flutter'da bir ListView oluşturmanın en yaygın yolu nedir?",
    answers: [
      "ListView.builder()",
      "ListView.fixed()",
      "ListView.scrollable()",
      "ListView.create()"
    ],
    correctAnswer: "ListView.builder()",
  ),
  Question(
    question:
    "Flutter'da hangi widget, farklı cihaz boyutlarına uyum sağlamak için kullanılır?",
    answers: ["MediaQuery", "Flexible", "SizedBox", "AspectRatio"],
    correctAnswer: "MediaQuery",
  ),
  Question(
    question:
    "Flutter'da bir widget'in üstüne tıklanıp tıklanmadığını nasıl kontrol edersiniz?",
    answers: ["GestureDetector", "ClickListener", "TouchHandler", "EventDetector"],
    correctAnswer: "GestureDetector",
  ),
  Question(
    question: "Flutter'da bir widget'e kenarlık eklemek için hangi widget kullanılır?",
    answers: ["Container", "Border", "Edge", "Wrap"],
    correctAnswer: "Container",
  ),
  Question(
    question: "Flutter'da bir widget'in arka plan rengini ayarlamak için hangi özellik kullanılır?",
    answers: ["color", "background", "backgroundColor", "bgColor"],
    correctAnswer: "color",
  ),
  Question(
    question: "Flutter'da bir widget'in boyutunu sabitlemek için hangi widget kullanılır?",
    answers: ["SizedBox", "FixedBox", "DimensionBox", "SizeConstraint"],
    correctAnswer: "SizedBox",
  ),
];
