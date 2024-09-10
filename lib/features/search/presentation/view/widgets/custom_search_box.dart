import 'package:bookly/core/resources/color_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/search/presentation/manager/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorManger.kBlue,
      onFieldSubmitted: (value) async {
        await BlocProvider.of<SearchCubit>(context)
            .search(searchKeyWord: value);
      },
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.search,
        ),
        suffixIconColor: ColorManger.kBlue.withOpacity(0.8),
        hintText: "Search",
        hintStyle: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Colors.white.withOpacity(0.8)),
        border: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManger.red),
            borderRadius: BorderRadius.circular(AppSize.s12)),
        disabledBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppPadding.p12),
      borderSide: BorderSide(color: ColorManger.whit),
    );
  }
}
