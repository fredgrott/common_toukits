// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:customwidgets_catalog/appbar/app_bar.story.dart' as _i2;
import 'package:customwidgets_catalog/center/center.story.dart' as _i3;
import 'package:customwidgets_catalog/dropdown/drop_down.story.dart' as _i4;
import 'package:customwidgets_catalog/listview/list_view.story.dart' as _i5;
import 'package:playbook/playbook.dart' as _i1;

_i1.Playbook get playbook => _i1.Playbook(stories: stories);
List<_i1.Story> get stories => [
      _$appbar$app_bar$Story(),
      _$center$center$Story(),
      _$dropdown$drop_down$Story(),
      _$listview$list_view$Story()
    ];
_i1.Story _$appbar$app_bar$Story() => _i1.Story('AppBarWidget',
    scenarios: [_i2.appBarJustTitle(), _i2.appBarTitleNActionsIcon()]);
_i1.Story _$center$center$Story() =>
    _i1.Story('Center Widget', scenarios: [_i3.centerWidget()]);
_i1.Story _$dropdown$drop_down$Story() =>
    _i1.Story('Dropdown Widget', scenarios: [_i4.dropDown()]);
_i1.Story _$listview$list_view$Story() =>
    _i1.Story('ListView Widget', scenarios: [_i5.listView()]);
