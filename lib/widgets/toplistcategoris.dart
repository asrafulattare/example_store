import 'package:flutter/material.dart';

class TopListCatgoris extends StatelessWidget {
  const TopListCatgoris({
    Key? key,
    required List<String> categories,
  })  : _categories = categories,
        super(key: key);

  final List<String> _categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 8, top: 8),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 30,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    _categories[index],
                  ),
                )),
              ),
            );
          }),
    );
  }
}
