// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:core_devoops/src/domain/models/build_environment.dart';

class BuildConstants {
  late Map<String, dynamic> _config;

  // getters will match the setting variables in the _Config class
  dynamic get whereAmI {
    return _config[_Config.whereAmI];
  }

  void setEnvironment(BuildEnvironment env) {
    switch (env) {
      case BuildEnvironment.dev:
        _config = _Config.devConstants;
        break;
      case BuildEnvironment.production:
        _config = _Config.productionConstants;
        break;
      case BuildEnvironment.staging:
        _config = _Config.stagingConstants;
        break;
      case BuildEnvironment.storySnapshot:
        _config = _Config.storySnapshotConstants;
        break;
      case BuildEnvironment.storyGallery:
        _config = _Config.storyGalleryConstants;
        break;
    }
  }
}

class _Config {
  static const Map<String, dynamic> devConstants = <String, dynamic>{
    whereAmI: "dev-local",
  };

  static const Map<String, dynamic> productionConstants = <String, dynamic>{
    whereAmI: "production",
  };

  static const Map<String, dynamic> stagingConstants = <String, dynamic>{
    whereAmI: "staging",
  };

  static const Map<String, dynamic> storyGalleryConstants = <String, dynamic>{
    whereAmI: "story gallery",
  };

  static const Map<String, dynamic> storySnapshotConstants = <String, dynamic>{
    whereAmI: "story gallery",
  };

  // our env variables
  static const whereAmI = "where_am_i";
}
