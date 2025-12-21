import 'dart:math';

void main() {
  final random = Random();
  List<String> topics = [
    'Moto',
    'Food sales',
    'Coffee Sale Management',
    'Phone Sale Management',
  ];
  String randomTopic = topics[random.nextInt(topics.length)];
  print(randomTopic);
}
