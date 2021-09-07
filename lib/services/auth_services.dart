part of 'services.dart';

class AuthServices {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      UserModel user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        name: name,
        hoby: hobby,
        balance: 2800000,
      );
      await UserServices().setUser(user);
      return user;
    } catch (e) {
      throw e;
    }
  }
}
