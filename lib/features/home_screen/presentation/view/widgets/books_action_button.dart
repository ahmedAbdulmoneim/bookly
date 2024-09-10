import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/values_manager.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class BooksActionButtons extends StatelessWidget {
  const BooksActionButtons({
    super.key,
    required this.bookModel
  });
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppPadding.p30, right: AppPadding.p30),
      child: Row(
        children: [
          Expanded(
            child: CustomTextButton(
                text: 'Free',
                textStyle:
                Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Colors.black,
                ),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(AppSize.s15),
                    bottomLeft: Radius.circular(AppSize.s15)),
                backGroundColor: ColorManger.whit),
          ),
          Expanded(
            child: CustomTextButton(
              onPressed: ()async{
                Uri url = Uri.parse(bookModel.volumeInfo!.previewLink!);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
                text: 'preview',
                textStyle: Theme.of(context).textTheme.headlineSmall!,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(AppSize.s15),
                    bottomRight: Radius.circular(AppSize.s15)),
                backGroundColor: ColorManger.kOrange),
          ),

        ],
      ),
    );
  }
}