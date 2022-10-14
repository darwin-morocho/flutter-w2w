import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  const Loader({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<Loader> createState() => LoaderState();

  static LoaderState of(BuildContext context) {
    return context.findAncestorStateOfType()!;
  }
}

class LoaderState extends State<Loader> {
  final _loading = ValueNotifier(false);

  @override
  void dispose() {
    _loading.dispose();
    super.dispose();
  }

  void show() {
    _loading.value = true;
  }

  void dismiss() {
    _loading.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: [
          Positioned.fill(
            child: widget.child,
          ),
          ValueListenableBuilder<bool>(
            valueListenable: _loading,
            builder: (_, loading, child) {
              if (loading) {
                return child!;
              }
              return const SizedBox(
                width: 0,
                height: 0,
              );
            },
            child: Positioned.fill(
              child: Container(
                color: Colors.white24,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
