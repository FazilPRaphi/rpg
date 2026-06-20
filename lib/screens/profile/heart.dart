import 'package:flutter/material.dart';
import 'package:rpg/models/character.dart';

class Heart extends StatefulWidget {
  const Heart(this.isFav, {super.key, required this.character});
  final bool isFav;
  final Character character;

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _sizeAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween(begin: 25, end: 40), weight: 50),
      TweenSequenceItem<double>(tween: Tween(begin: 40, end: 25), weight: 50),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return IconButton(
          onPressed: () {
            setState(() {
              _controller.reset();
              _controller.forward();
              widget.character.toggleFav();
            });
          },
          icon: Icon(
            Icons.favorite,
            color: widget.character.isfav ? Colors.red : Colors.grey[800],
            size: _sizeAnimation.value,
          ),
        );
      },
    );
  }
}
