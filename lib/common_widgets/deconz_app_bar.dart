import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class DeconzAppBar extends AppBar {
  DeconzAppBar(
      {Key? key,
      String? title,
      List<Widget>? actions,
      bool? centerTitle,
      Widget? flexibleSpace,
      bool automaticallyImplyLeading = false,
      bool showAddAction = false,
      VoidCallback? onTap,
      BuildContext? context})
      : super(
          key: key,
          title: (title == null)
              ? null
              : Text(title,
                  style: const TextStyle(fontSize: 18, color: Colors.black)),
          actions: showAddAction
              ? [
                  IconButton(
                    splashRadius: 25,
                    iconSize: 40,
                    icon: const Icon(
                      EvaIcons.plusCircle,
                      color: Colors.black,
                      size: 40,
                    ),
                    onPressed: () => onTap == null ? null : onTap(),
                  )
                ]
              : actions,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          centerTitle: centerTitle,
          flexibleSpace: flexibleSpace,
          iconTheme: const IconThemeData(color: Colors.black),
          automaticallyImplyLeading: automaticallyImplyLeading,
          // leading: showBack == null
          //     ? null
          //     : IconButton(
          //         splashRadius: 25,
          //         iconSize: 40,
          //         icon: const Icon(
          //           EvaIcons.arrowIosBackOutline,
          //           color: Colors.black,
          //           size: 30,
          //         ),
          //         onPressed: () => {
          //           if (showBack == true && context != null){
          //
          //           }
          //         },
          //       )
        );
}
