import 'package:hive/hive.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  // Criação de um box para armazenar usuários
  Future<Box> get _userBox async {
    return await Hive.openBox('userBox');
  }

  // Método para registrar um usuário
  Future<void> registerUser(String username, String password) async {
    final box = await _userBox;
    await box.put('username', username);
    await box.put('password', password);
  }

  // Método para realizar o login de um usuário
  Future<Map<String, dynamic>?> loginUser(String username, String password) async {
    final box = await _userBox;
    String? storedUsername = box.get('username');
    String? storedPassword = box.get('password');

    if (storedUsername == username && storedPassword == password) {
      return {'username': username, 'password': password};
    } else {
      return null;
    }
  }

  // Método para verificar se o usuário está autenticado
  Future<bool> isUserLoggedIn() async {
    final box = await _userBox;
    // Verifica se o usuário existe na caixa (box)
    return box.containsKey('username') && box.containsKey('password');
  }
}
