import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 34,
              height: 24,
              child: Checkbox(value: true, onChanged: (val) {}),
            ),
            SizedBox(
              width: 10,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '  ${TTexts.iAgreeTo}  ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: TTexts.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary,
                      color: dark ? TColors.white : TColors.primary)),
            ])),
          ],
        ),
        Text(
          TTexts.and,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(TTexts.termsOfUse,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                decoration: TextDecoration.underline,
                decorationColor: dark ? TColors.white : TColors.primary,
                color: dark ? TColors.white : TColors.primary)),
      ],
    );
  }
}
