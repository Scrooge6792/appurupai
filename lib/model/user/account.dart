part of './user.dart';

abstract interface class UserAccount {
  UserAccount({
    required this.uuid,
  });

  /// [uuid] is the unique key created with user account
  final String uuid;
}

