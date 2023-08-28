import 'mainFile.dart';
import 'userList.dart';

// Authentication Function
void login() {
  allUsers.forEach((element) {
    if (element['name'] == userName && element['password'] == userPass) {
      currentUser = element;
    }
  });

  if (currentUser != null) {
    if (currentUser['roll'] == 'admin') {
      adminPanel();
    } else if (currentUser['roll'] == 'student') {
      userPanel();
    }
  } else {
    print('Incorrect username or password');
  }
}
