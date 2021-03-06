import 'package:topshoplekki/src/app/generated/locator/locator.dart';
import 'package:topshoplekki/src/app/models/user_model.dart';
import 'package:topshoplekki/src/app/services/analytics_service.dart';
import 'package:topshoplekki/src/app/services/firestore_service.dart';
// import 'package:topshoplekki/src/app/models/user_model.dart';
import '../../app/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirestoreService _firestoreService = locator<FirestoreService>();
  final AnalyticsService _analyticsService = locator<AnalyticsService>();

  UserModel _currentUser;

  UserModel get currentUser => _currentUser;

  Future loginWithEmail({
    @required String email,
    @required String password,
  }) async {
    try {
      var authResult = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _populateCurrentUser(authResult.user);

      return authResult.user != null;
    } catch (e) {
      return e.message;
    }
  }

  Future signUpWithEmail({
    @required String fullName,
    @required String email,
    @required String password,
  }) async {
    try {
      var authResult = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // create a new user profile on firestore
      _currentUser = UserModel(
        id: authResult.user.uid,
        fullName: fullName,
        email: authResult.user.email,
      );

      await _firestoreService.createUser(_currentUser);
      await _analyticsService.setUserProperties(userId: authResult.user.uid);

      return authResult.user != null;
    } catch (e) {
      return e.message;
    }
  }

  Future<bool> isUserLoggedIn() async {
    var user = _firebaseAuth.currentUser;
    await _populateCurrentUser(user);

    return user != null;
  }

  _populateCurrentUser(User user) async {
    if (user != null) {
      _currentUser = await _firestoreService.getUser(user.uid);
      await _analyticsService.setUserProperties(userId: user.uid);
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
