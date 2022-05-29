// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gist: Do not forget that we have the define parameters as well as in
//        flutter run --dart-define=DEFINEEXAMPLE_APP_NAME=VeryAwesomeApp --dart-define=DEFINEEXAMPLE_APP_SUFFIX=.dev
//
//       Which is why this is a BuildEnvironment enum as for define configs I would have to use something like:
//
//       class EnvironmentConfig {
//  static const APP_NAME = String.fromEnvironment(
//    'DEFINEEXAMPLE_APP_NAME',
//    defaultValue: 'awesomeApp'
//  );
//  static const APP_SUFFIX = String.fromEnvironment(
//      'DEFINEEXAMPLE_APP_SUFFIX'
//  );
//}
//
// And then read them out via
//  Text(
//              'APP_NAME: ${EnvironmentConfig.APP_NAME}',
//              style: Theme.of(context).textTheme.subtitle1,
//            ),
//
//    For example.
//
//   NOTE OF CAUTION: Due to the way enums is currently implemented as EnumClass which are sealed we only want to use one or
//                    two enumsijn anapp as sealed class enums are currently not memory efficient or performat above 100 models.
//                    See this article for details:
//                     https://medium.com/p/dart-expert-trick-for-immutable-value-type-models-8508e44cdb67
//


enum BuildEnvironment {
  dev,
  staging,
  // so that can run the two versions of custom widget visual testing I do via playbook i.e. storybook for flutter
  storyGallery,
  storySnapshot,
  production,
}
