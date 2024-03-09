import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchBox extends StatefulWidget {
  const CustomSearchBox({
    super.key,
  });

  @override
  State<CustomSearchBox> createState() => _CustomSearchBoxState();
}

class _CustomSearchBoxState extends State<CustomSearchBox> {
  final TextEditingController searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchTextController,
      onChanged: (value) {
        BlocProvider.of<SearchCubit>(context).searchWord =
            searchTextController.text;
        BlocProvider.of<SearchCubit>(context)
            .fitchSearchResult(searchWord: searchTextController.text);
      },
      style: const TextStyle(
        color: Colors.black87,
        fontSize: 18,
      ),
      decoration: InputDecoration(
        hintText: 'Search...',
        hintStyle: const TextStyle(color: Colors.black54),
        fillColor: Colors.white,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {
            BlocProvider.of<SearchCubit>(context).searchWord =
                searchTextController.text;
            BlocProvider.of<SearchCubit>(context)
                .fitchSearchResult(searchWord: searchTextController.text);
          },
          icon: const Icon(
            CupertinoIcons.search,
            color: Colors.black54,
            size: 35,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
