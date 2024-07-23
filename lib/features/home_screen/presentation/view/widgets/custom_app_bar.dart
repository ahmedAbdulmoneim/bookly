import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/resources/assets_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p30,right: AppPadding.p22,top: AppPadding.p44),
      child: Row(
        children: [
          SvgPicture.asset(ImagesData.splashLogo),
          const Spacer(),
          IconButton(
            onPressed: (){},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,

            ),
          )
        ],
      ),
    );
  }
}