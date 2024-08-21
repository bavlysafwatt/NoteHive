import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/components/custom_app_bar.dart';
import 'package:notes_app/components/custom_search_bar.dart';
import 'package:notes_app/cubits/app_bar_cubit/app_bar_cubit.dart';

class CustomAppBarBuilder extends StatefulWidget {
  const CustomAppBarBuilder({super.key});

  @override
  State<CustomAppBarBuilder> createState() => _CustomAppBarBuilderState();
}

class _CustomAppBarBuilderState extends State<CustomAppBarBuilder> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AppBarCubit>(context).changeStateNotSearching();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBarCubit, AppBarState>(
      builder: (context, state) {
        if (state is AppBarNotSearch) {
          return CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
            onPressed: () {
              BlocProvider.of<AppBarCubit>(context).changeStateSearching();
            },
          );
        } else {
          return CustomSearchBar(
            onPressed: () {
              FocusManager.instance.primaryFocus?.unfocus();
              BlocProvider.of<AppBarCubit>(context).changeStateNotSearching();
            },
          );
        }
      },
    );
  }
}
