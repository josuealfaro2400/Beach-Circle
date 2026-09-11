import 'package:firebase_auth/firebase_auth.dart';

class ModeratorAccess {
  static const List<String> adminEmails = [
    'teef@gmail.com',
    'reytest@gmail.com',
    'giselle1@gmail.com',
    'nguyentheresa204@gmail.com',
    'josuealfaro8441@gmail.com',
  ];

  static bool get isModerator {
    final email = FirebaseAuth.instance.currentUser?.email?.toLowerCase();

    return email != null &&
        adminEmails.map((e) => e.toLowerCase()).contains(email);
  }
}
