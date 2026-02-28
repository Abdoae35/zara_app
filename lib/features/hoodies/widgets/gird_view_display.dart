import 'package:flutter/material.dart';
import 'package:zara_app/features/home/widgets/card_view.dart';

class girdViewDisplay extends StatelessWidget {
  final List<cardView> cardList;
  const girdViewDisplay({
    super.key,
    required this.cardCount,
    required this.cardList,
  });

  final int cardCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 322,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: cardList.length,
        itemBuilder: (context, index) => cardList[index],
      ),
    );
  }
}
