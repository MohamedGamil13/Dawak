import 'package:dawak/core/theme/styles/app_styles.dart';
import 'package:dawak/features/onboarding/presentation/widgets/doctor_image.dart';
import 'package:dawak/features/onboarding/presentation/widgets/on_borading_layout.dart';
import 'package:dawak/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoradingLayout(
      onboradingBody: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DoctorImage(),
          Text(
            S.of(context).onBorading1solgan1,
            style: AppStyles.bold32black,
            textAlign: TextAlign.center,
          ),
          Text(
            S.of(context).onBorading1solgan2,
            style: AppStyles.bold32black,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),
          Text(
            S.of(context).subTitle,
            style: AppStyles.w500gray20,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}



// Column(
//       children: [
//         /// CONTENT
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const DoctorImage(),
//               Text(
//                 S.of(context).onBorading1solgan1,
//                 style: AppStyles.bold32black,
//                 textAlign: TextAlign.center,
//               ),
//               Text(
//                 S.of(context).onBorading1solgan2,
//                 style: AppStyles.bold32black,
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 20.h),
//               Text(
//                 S.of(context).subTitle,
//                 style: AppStyles.w500gray20,
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),

//         /// BUTTON (Fixed Position)
//         Padding(
//           padding: EdgeInsets.only(bottom: 24.h),
//           child: CustomButton(onPressed: () {}, text: S.of(context).nextButton),
//         ),
//       ],
//     );