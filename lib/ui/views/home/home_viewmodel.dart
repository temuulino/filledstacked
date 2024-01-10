import 'package:filledstacked/app/app.bottomsheets.dart';
import 'package:filledstacked/app/app.dialogs.dart';
import 'package:filledstacked/app/app.locator.dart';
import 'package:filledstacked/ui/common/app_strings.dart';
import 'package:filledstacked/ui/views/home/home_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FormViewModel {
  final _dialogService = locator<DialogService>();

  void captureEmail() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Thanks for signing up',
      description: 'Check in $emailValue for a verification email',
    );
  }
}
