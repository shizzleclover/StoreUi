import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? leftIconPath;
  final String? rightIconPath;
  final Color? background;
  final VoidCallback? onLeftIconTap;
  final VoidCallback? onRightIconTap;

  const CustomAppBar({
    Key? key,
    this.title,
    this.leftIconPath,
    this.rightIconPath,
    this.background,
    this.onLeftIconTap,
    this.onRightIconTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(90.0),
      child: Container(
        color: background ?? Theme.of(context).appBarTheme.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: background,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: onLeftIconTap,
                  child: leftIconPath != null && leftIconPath!.isNotEmpty
                      ? SvgPicture.asset(leftIconPath!)
                      : const SizedBox.shrink(),
                ),
                if (title != null)
                  Flexible(
                    flex: 1,
                    child: Text(
                      title!,
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Avenir',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                if (rightIconPath != null && rightIconPath!.isNotEmpty)
                  GestureDetector(
                    onTap: onRightIconTap,
                    child: SvgPicture.asset(rightIconPath!),
                  )
                else
                  const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90.0);
}
