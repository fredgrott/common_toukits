// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:custom_catalog/src/stories/md3_custom/md3_custom_card.story.dart'
    as _i3;
import 'package:custom_catalog/src/stories/md3_filled/md3_filled_card.story.dart'
    as _i4;
import 'package:custom_catalog/src/stories/md_elevated/md3_elevated_card.story.dart'
    as _i2;
import 'package:custom_catalog/src/stories/md_outlined/md3_outlined_card.story.dart'
    as _i5;
import 'package:playbook/playbook.dart' as _i1;

_i1.Playbook get playbook => _i1.Playbook(stories: stories);
List<_i1.Story> get stories => [
      _$src$stories$md_elevated$md3_elevated_card$Story(),
      _$src$stories$md3_custom$md3_custom_card$Story(),
      _$src$stories$md3_filled$md3_filled_card$Story(),
      _$src$stories$md_outlined$md3_outlined_card$Story()
    ];
_i1.Story _$src$stories$md_elevated$md3_elevated_card$Story() =>
    _i1.Story('MD3 Elevated Card', scenarios: [_i2.md3elevatedCard()]);
_i1.Story _$src$stories$md3_custom$md3_custom_card$Story() =>
    _i1.Story('MD3 Custom Card', scenarios: [_i3.md3customCard()]);
_i1.Story _$src$stories$md3_filled$md3_filled_card$Story() =>
    _i1.Story('MD3 Filled Card', scenarios: [_i4.md3filledCard()]);
_i1.Story _$src$stories$md_outlined$md3_outlined_card$Story() =>
    _i1.Story('MD3 Outlined Card', scenarios: [_i5.md3outlinedCard()]);
