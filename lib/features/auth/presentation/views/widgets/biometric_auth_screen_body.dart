import 'package:dawak/core/constants/app_images.dart';
import 'package:dawak/core/utils/routing/app_navigator.dart';
import 'package:dawak/core/utils/theme/colors/app_colors.dart';
import 'package:dawak/core/utils/theme/styles/app_styles.dart';
import 'package:dawak/core/widgets/custom_button.dart';
import 'package:dawak/core/widgets/image_container.dart';
import 'package:dawak/features/auth/presentation/view_model/local_auth_cubit.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocListener, ReadContext;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiometricAuthScreenBody extends StatelessWidget {
  const BiometricAuthScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocListener<LocalAuthCubit, LocalAuthState>(
        listener: (context, state) {
          if (state is LocalAuthSuccess) {
            Navigator.pop(context);
            context.goHome();
          }
          if (state is LocalAuthLoading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => const Center(child: CircularProgressIndicator()),
            );
          }
          if (state is LocalAuthFailure) {
            Navigator.pop(context);
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
          }
        },
        child: Column(
          spacing: 20,
          children: [
            SizedBox(height: 50.h),

            const ImageContainer(height: 80, imagePath: AppImages.biometricGIF),

            Text(s.biometricTitle, style: AppStyles.bold32black),

            Text(
              s.biometricDescription,
              style: AppStyles.w500gray16,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 50),

            CustomButton(
              onPressed: () {
                context.read<LocalAuthCubit>().signIn();
              },
              text: s.enableFaceId,
            ),

            CustomButton(
              onPressed: () {},
              text: s.usePasswordInstead,
              buttonColor: AppColors.scaffoldColor,
              textColor: AppColors.graySubtitle,
            ),
          ],
        ),
      ),
    );
  }
}
