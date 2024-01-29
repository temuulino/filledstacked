import 'package:filledstacked/ui/views/about_us/about_viewmodel.dart';
import 'package:filledstacked/ui/views/about_us/about_view.form.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'about_view.desktop.dart';
import 'about_view.mobile.dart';

@FormView(fields: [FormTextField(name: "email")])
class AboutView extends StackedView<AboutViewModel> with $AboutView {
  AboutView({super.key});

  @override
  Widget builder(
    BuildContext context,
    AboutViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => AboutViewMobile(controller: emailController),
      desktop: (_) => AboutViewDesktop(controller: emailController),
    );
  }

  @override
  AboutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AboutViewModel();

  @override
  void onViewModelReady(AboutViewModel viewModel) {
    // #3: Enable two way binding
    syncFormWithViewModel(viewModel);
  }
}
