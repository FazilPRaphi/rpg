import 'package:flutter/material.dart';
import 'package:rpg/models/vocation.dart';
import 'package:rpg/shared/styledtext.dart';
import 'package:rpg/theme.dart';

class VocationCard extends StatelessWidget {
  const VocationCard({super.key, required this.vocation, required this.onTap,
  required this.selected});

  final Vocation vocation;
  final void Function(Vocation) onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(vocation);
      },
      child: Card(
        color: selected? AppColors.secondaryColor : AppColors.secondaryAccent,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset(
                'assets/img/vocations/${vocation.image}',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                color: !selected ? Colors.black.withOpacity(.4): Colors.transparent,
                colorBlendMode: BlendMode.color,
              ),
              const SizedBox(width: 10),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Styledheading(vocation.title),
                    StyledText(vocation.description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
