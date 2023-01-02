import 'package:flutter/material.dart';
import 'package:structure_demo/business/profile/profile_view_model.dart';
import 'package:structure_demo/business/shared/view_model_exception.dart';
import 'package:structure_demo/generated/l10n.dart';
import 'package:structure_demo/models/user/user_model.dart';
import 'package:structure_demo/utils/form_validator.dart';
import 'package:structure_demo/view/resources/app_resources.dart';
import 'package:provider/provider.dart';

class ProfileContent extends StatefulWidget {
  final UserModel item;
  final Function(String error)? onError;

  const ProfileContent({
    super.key,
    required this.item,
    this.onError,
  });

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _firstNameController.text = widget.item.firstName;
    _lastNameController.text = widget.item.lastName;
    _emailNumberController.text = widget.item.email;
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailNumberController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: _buildFormContent(),
            ),
          ],
        ),
      );

  Widget _buildFormContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: _firstNameController,
            textCapitalization: TextCapitalization.words,
            keyboardType: TextInputType.name,
            autofillHints: const [AutofillHints.givenName],
            decoration: InputDecoration(
              labelText: S.current.firstName,
            ),
            validator: FormValidator.person(),
          ),
          const SizedBox(height: AppDimensions.mainSpace),
          TextFormField(
            controller: _lastNameController,
            textCapitalization: TextCapitalization.words,
            keyboardType: TextInputType.name,
            autofillHints: const [AutofillHints.familyName],
            decoration: InputDecoration(
              labelText: S.current.lastName,
            ),
            validator: FormValidator.person(),
          ),
          const SizedBox(height: AppDimensions.mainSpace),
          TextFormField(
            controller: _emailNumberController,
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            decoration: InputDecoration(
              labelText: S.current.email,
            ),
            validator: FormValidator.requiredEmail(),
          ),
          const SizedBox(height: AppDimensions.doubleMainSpace),
          ElevatedButton.icon(
            onPressed: () => _save(),
            icon: const Icon(
              AppIcons.save,
            ),
            label: Text(
              S.current.save,
            ),
          ),
        ],
      );

  Future<void> _save() async {
    try {
      await _trySave();
    } on ViewModelException catch (e) {
      widget.onError?.call(e.error ?? '');
    } catch (_) {
      widget.onError?.call(S.current.somethingWentWrong);
    }

    try {
      await _trySave();
    } catch (_) {}
  }

  Future<void> _trySave() async {
    if (!_checkForm()) {
      return;
    }

    final viewModel = context.read<ProfileViewModel>();
    final model = viewModel.item;

    if (model == null) {
      return;
    }

    final newModel = model.copyWith(
      firstName: _firstNameController.text.trim(),
      lastName: _firstNameController.text.trim(),
      email: _emailNumberController.text.trim(),
    );

    try {
      await viewModel.update(
        id: model.id,
        item: newModel,
        updateLocally: true,
        loading: true,
      );
    } catch (e) {
      rethrow;
    }
  }

  bool _checkForm() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();

      return true;
    } else {
      return false;
    }
  }
}
