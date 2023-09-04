part './account.dart';

abstract class User implements UserAccount {}

class UserImpl extends User {
  UserImpl({
    required this.uuid,
  });

  @override
  final String uuid;

  @override
  bool operator ==(Object other) {
    return other is User && uuid == other.uuid && hashCode == other.hashCode;
  }

  @override
  int get hashCode => Object.hash(uuid, uuid);

}

void doSomething() {
}