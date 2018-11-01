// travis_ci, Copyright (C) 2018 Dinesh Ahuja <dev@kabiir.me>.
// See the included LICENSE file for more info.

import 'package:travis_ci/travis_ci.dart' as travis;

void main() => print('Is script running under TRAVIS? : ${travis.isCi}');
