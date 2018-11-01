// travis_ci, Copyright (C) 2018 Dinesh Ahuja <dev@kabiir.me>.
// See the included LICENSE file for more info.

import 'dart:io';

/// contains commit message for single commit pushes
final String commitMessage =
    Platform.environment['TRAVIS_COMMIT_MESSAGE'] ?? '';

/// One of `push`, `pull_request`, `api`, `cron`
final String eventType = Platform.environment['TRAVIS_EVENT_TYPE'];

/// Whether current environment is Travis CI
final bool isCi = Platform.environment.containsKey('TRAVIS');

/// Range of commit sha when inside a PR
String get commitRange {
  final range = (Platform.environment['TRAVIS_COMMIT_RANGE'] ?? '').split('..');

  // to include the start commit itself add `~1` to go 1 commit before it.
  return range.isNotEmpty ? '${range[0]}~1..${range[1]}' : '';
}
