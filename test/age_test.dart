import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

Future<String> _run(List<String> inputs) async {
  final process = await Process.start('dart', ['run', 'bin/age.dart']);
  for (final line in inputs) {
    process.stdin.writeln(line);
  }
  await process.stdin.flush();
  await process.stdin.close();
  final out = await process.stdout.transform(utf8.decoder).join();
  await process.exitCode;
  return out;
}

/// One test = the points for this activity. It passes only if your
/// student.json is filled in AND the program computes the years correctly.
void main() {
  test('Activity 3 complete: years-until-100 + student.json filled', () async {
    // 1. student.json must be filled in
    final info = jsonDecode(File('student.json').readAsStringSync())
        as Map<String, dynamic>;
    for (final field in [
      'classCode',
      'fullName',
      'studentNumber',
      'studentEmail',
      'personalEmail',
      'githubAccount',
    ]) {
      expect(info[field], isNotEmpty, reason: 'Set "$field" in student.json');
    }

    // 2. the program computes 100 - age (two cases, so it can't be hardcoded)
    expect(await _run(['Buboy', '25']), contains('75'),
        reason: 'age 25 should give 75 years remaining');
    expect(await _run(['Ana', '40']), contains('60'),
        reason: 'age 40 should give 60 years remaining');
  }, timeout: const Timeout(Duration(seconds: 60)));
}
