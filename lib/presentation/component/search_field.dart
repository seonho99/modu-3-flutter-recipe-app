import 'package:flutter/material.dart';

import '../ui/color_styles.dart';
import '../ui/text_styles.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 255,
      height: 40,
      child: TextFormField(
        controller: _searchController,
        style: TextStyles.smallerTextRegular,
        onChanged: (value) {
        },
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(10, 11, 10, 11),
            child: Image.asset(
              'assets/icons/search.png',
              width: 18,
              height: 18,
              color: ColorStyles.gray4,
            ),
          ),
          hintText: 'Search recipe',
          hintStyle: TextStyles.smallerTextRegular.copyWith(
            color: ColorStyles.gray4,
          ),
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ColorStyles.gray4,
              width: 1.3,
            ),
          ),
        ),
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
