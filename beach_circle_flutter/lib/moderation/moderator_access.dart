import 'package:firebase_auth/firebase_auth.dart';

class ModeratorAccess {
  static const String _moderatorEmails = String.fromEnvironment(
    'MODERATOR_EMAILS',
  );

  static List<String> get adminEmails =>
      _moderatorEmails
          .split(',')
          .map((email) => email.trim().toLowerCase())
          .where((email) => email.isNotEmpty)
          .toList();

  static bool get isModerator {
    final email = FirebaseAuth.instance.currentUser?.email?.toLowerCase();

    return email != null &&
        adminEmails.map((e) => e.toLowerCase()).contains(email);
  }
}
