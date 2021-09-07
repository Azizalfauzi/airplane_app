part of 'services.dart';

class UserServices {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');
  Future<void> setUser(UserModel userModel) async {
    try {
      _userReference.doc(userModel.id).set({
        'email': userModel.email,
        'name': userModel.name,
        'hobby': userModel.hoby,
        'balance': userModel.balance,
      });
    } catch (e) {
      throw e;
    }
  }
}
