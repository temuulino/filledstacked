import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeSubtitle extends StatelessWidget {
  const HomeSubtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = [
      // Та бидэнд ажлаа даатга
      Text(
        'Build amazing software, the right way.',
        style: ktsBodyLarge.copyWith(
          fontWeight: FontWeight.w600,
          color: kcDarkGreyColor,
        ),
      ),
      horizontalSpaceSmall,
      // Санаа амар орчуулга, уян хатан үнэ ханш
      GradientText(
        'Sign up to be notified',
        style: ktsBodyLarge.copyWith(fontWeight: FontWeight.w600),
        colors: const [kcTitleGradientLeft, kcTitleGradientRight],
      )
    ];

    return ScreenTypeLayout.builder(
      mobile: (_) => Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: children),
      desktop: (_) =>
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: children),
    );
  }
}
