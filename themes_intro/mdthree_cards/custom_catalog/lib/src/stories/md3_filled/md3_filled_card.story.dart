// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:custom_themes/app_colors.dart';
import 'package:custom_themes/theme_defaults.dart';
import 'package:custom_widgets/md3_filled_card.dart';
import 'package:flutter/material.dart';
import 'package:playbook/playbook.dart';

const storyTitle = "MD3 Filled Card";


// ignore: long-method
Scenario md3filledCard() {

  return Scenario(
    "MD3 Filled Card", 
    child: MD3FilledCard(
      cardContent: Text(
        "Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur adipisci[ng] velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? [D]Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
        style: TextStyle(
          color: appBrightness == Brightness.dark
              ? appDarkColorScheme.onSurfaceVariant
              : appLightColorScheme.onSurfaceVariant,
        ),
      ), 
      cardElevation: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return 1.0;
        }
        if (states.contains(MaterialState.hovered)) {
          return 10;
        }
        if (states.contains(MaterialState.focused)) {
          return 0;
        }

        if (states.contains(MaterialState.pressed)) {
          return 0;
        }

        if (states.contains(MaterialState.dragged)) {
          return 6.0;
        }

        return 1.0;
      }), 
      cardOverlayColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.hovered)) {
          return appBrightness == Brightness.dark
              ? appDarkColorScheme.onSurface
                  .withOpacity(hoverStateOpacity)
              : appLightColorScheme.onSurface
                  .withOpacity(hoverStateOpacity);
        }

        if (states.contains(MaterialState.focused)) {
          return appBrightness == Brightness.dark
              ? appDarkColorScheme.onSurface
                  .withOpacity(focusStateOpacity)
              : appLightColorScheme.onSurface
                  .withOpacity(focusStateOpacity);
        }

        if (states.contains(MaterialState.pressed)) {
          return appBrightness == Brightness.dark
              ? appDarkColorScheme.onSurface
                  .withOpacity(pressedStateOpacity)
              : appLightColorScheme.onSurface
                  .withOpacity(pressedStateOpacity);
        }
        if (states.contains(MaterialState.dragged)) {
          return appBrightness == Brightness.dark
              ? appDarkColorScheme.onSurface
                  .withOpacity(draggedStateOpacity)
              : appLightColorScheme.onSurface
                  .withOpacity(draggedStateOpacity);
        }

        return appBrightness == Brightness.dark
            ? appDarkColorScheme.surface
            : appLightColorScheme.surface;
      }),
      cardOnTap: () {},
      cardColor: appBrightness == Brightness.dark
          ? appDarkColorScheme.surfaceVariant
          : appLightColorScheme.surfaceVariant,
      cardShadowColor: appBrightness == Brightness.dark
          ? appDarkColorScheme.shadow
          : appLightColorScheme.shadow,
      cardSurfaceTintColor: appBrightness == Brightness.dark
          ? appDarkColorScheme.surfaceTint
          : appLightColorScheme.surfaceTint,
      ),
    );
}
