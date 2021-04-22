import 'package:flutter_test/flutter_test.dart';
import 'package:troisplay/data/user.dart';
import 'package:troisplay/logic/make_user.dart';

void main() {
  const String userString =
      '{"full_name":"daniel amos","phone_number":"+2347064844385","id":"604efbda25fdd134c3c37d74","token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYwNGVmYmRhMjVmZGQxMzRjM2MzN2Q3NCIsImlhdCI6MTYxNTc5MTgwOSwiZXhwIjoxNjE4MzgzODA5fQ.uPAJRyyjCwBPENShM6yxYcygsULSRhclZ_UJ-Lmoy4A"}';
  final User correctValue = User(
      fullName: 'daniel amos',
      phoneNumber: '+2347064844385',
      id: '604efbda25fdd134c3c37d74',
      token:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYwNGVmYmRhMjVmZGQxMzRjM2MzN2Q3NCIsImlhdCI6MTYxNTc5MTgwOSwiZXhwIjoxNjE4MzgzODA5fQ.uPAJRyyjCwBPENShM6yxYcygsULSRhclZ_UJ-Lmoy4A');

  test('convert user string to User Type then check if full name match ...',
      () async {
    final User converted = makeUserMap(userString);
    expect(converted.fullName, correctValue.fullName);
  });
  test('convert user string to User Type then check if phone number match ...',
      () async {
    final User converted = makeUserMap(userString);
    expect(converted.phoneNumber, correctValue.phoneNumber);
  });
}
