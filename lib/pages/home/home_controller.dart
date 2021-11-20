import 'package:marvelapp/models/character/character.dart';
import 'package:marvelapp/repositories/character.dart';

class HomeController {
  Future<void> initialize() async {
    final CharacaterRepository repository = CharacaterRepository();

    print('object');

    Character character = await repository.get(1011334);
    print('get');
    print(character);

    print('list');
    final List<Character> characters = await repository.list();
    print(characters);
  }
}
