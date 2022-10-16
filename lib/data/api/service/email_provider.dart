import 'package:email_auth/email_auth.dart';

class EmailProvider {
  static var eauth = EmailAuth(sessionName: "currentSession");

  Future<bool> sendOtp(String email) async =>
      await eauth.sendOtp(recipientMail: email, otpLength: 5);
}
