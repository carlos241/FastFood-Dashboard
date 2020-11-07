import 'package:flutter/cupertino.dart';
import 'package:hola_mundo/models/user.dart';

class UserPrv with ChangeNotifier {
  User _user; // el _ significa que es variablr local
  List<User> _users = List<User>(); // se crea una lista vacia

  User getUser(String email) {
    return _users.firstWhere(
      (element) => element.email == email,
      orElse: () {
        return null;
      },
    );
  }

  // maneja de la variable user  obteniendo el usuario
  get user {
    return _user;
  }

  set user(User user) {
    _user = user;
    notifyListeners();
  }

// manejo de usuarios a la lista de usuarios
  get users {
    return _users;
  }

  set users(User user) {
    _users.add(user);
    notifyListeners();
  }
}
