# Travis CI

[![License](https://img.shields.io/github/license/devkabiir/travis_ci.svg)][LICENSE]
[![Travis build](https://img.shields.io/travis/com/devkabiir/travis_ci.svg)][repo]
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)][commitizen]
[![Commitizen style](https://img.shields.io/badge/commitizen--style-emoji-brightgreen.svg)][cz-emoji]

## About

Helper utilities for scripts running under Travis CI environment

## Usage

Add `travis_ci` to `dependencies`

```yaml
dependencies:
  ...
  travis_ci:
    git: https://www.github.com/devkabiir/travis_ci
```

Use inside your scripts

e.g. `<your-project>/bin/my_script.dart`

```dart
import 'package:travis_ci/travis_ci.dart' as travis;

void main() => print('Is script running under TRAVIS? : ${travis.isCi}');

```

## Contributing

- :fork_and_knife: Fork this repo
- Clone your forked version  
  `git clone https://github.com/<you>/travis_ci.git`

- :heavy_plus_sign: Add this repo as a remote  
  `git remote add upstream https://github.com/devkabiir/travis_ci.git`

- :arrow_double_up: Make sure you have recent changes  
  `git fetch upstream`

- :sparkles: Make a new branch with your proposed changes/fixes/additions  
  `git checkout upstream/master -b name_of_your_branch`

- :bookmark_tabs: Make sure you follow guidelines for [Git](#git)
- Push your changes  
  `git push origin name_of_your_branch`

- Make a pull request

## Git

- :white_check_mark: Sign all commits. Learn about [signing-commits]
- Use [commitizen] with [cz-emoji] adapter
- Check existing commits to get an idea
- Run the pre_commit script from project root `pub run pre_commit`
- If you're adding an `and` in your commit message, it should probably be separate commits
- Link relevant issues/commits with a `#` sign in the commit message
- Limit message length per line to 72 characters (excluding space required for linking issues/commits)
- Add commit description if message isn't enough for explaining changes

## Code style

- Maintain consistencies using included `.editorconfig`
- Everything else as per standard dart [guidelines]

## Testing

- Add tests for each new addition/feature
- Do not remove/change tests when refactoring
  - unless fixing already broken test.

## Features and bugs

Please file feature requests and bugs at the [issue-tracker].

## License

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Please see the [LICENSE] file in this repository for the full text

[repo]: https://github.com/devkabiir/travis_ci
[guidelines]: https://www.dartlang.org/guides/language/effective-dart/style
[commitizen]: http://commitizen.github.io/cz-cli/
[cz-emoji]: https://github.com/ngryman/cz-emoji
[signing-commits]: https://help.github.com/articles/signing-commits/
[issue-tracker]: https://www.github.com/devkabiir/travis_ci/issues
[LICENSE]: https://github.com/devkabiir/travis_ci/blob/master/LICENSE
