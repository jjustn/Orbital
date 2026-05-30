import "package:firebase_auth/firebase_auth.dart";
import 'package:flutter/material.dart';

// Reference to this AuthService
ValueNotifier<AuthService> authService = ValueNotifier(AuthService());

class AuthService {
  // Creating a firebase instance to do operations
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // current user
  User? get currentUser => firebaseAuth.currentUser;

  //Connection status
  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  // Sign in
  Future<UserCredential> signIn({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // Creating Account
  Future<UserCredential> createAccount({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // Sign Out
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  // Reset Password functionality(to be improved on)
  Future<void> resetPassword({required String email}) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  // Username
  Future<void> updateUsername({required String username}) async {
    await currentUser!.updateDisplayName(username);
  }

  // Change password from current password
  Future<void> resetPasswordFromCurrentPassword({
    required String email,
    required String currentPassword,
    required String newPassword,
  }) async {
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: currentPassword,
    );
    await currentUser!.reauthenticateWithCredential(credential);
    await currentUser!.updatePassword(newPassword);
  }
}
