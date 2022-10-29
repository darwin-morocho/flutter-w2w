import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../../../generated/translations.g.dart';
import '../../../../../core/env.dart';
import '../../../../../domain/models/performer/performer.dart';
import '../../../../global/app_colors.dart';
import '../../../../global/app_icons.dart';

class MovieCast extends StatelessWidget {
  const MovieCast({super.key, required this.cast});

  final List<Performer> cast;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20).copyWith(
            bottom: 5,
            top: 10,
          ),
          child: Row(
            children: [
              Text(
                texts.movie.cast,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () => _showAllCast(context, cast),
                child: Text(
                  texts.movie.showAll,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
          child: ListView.separated(
            separatorBuilder: (_, __) => const SizedBox(width: 15),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              final performer = cast[index];
              return PerformerListTile(
                performer: performer,
                mode: Axis.horizontal,
              );
            },
            itemCount: cast.length,
          ),
        ),
      ],
    );
  }

  Future<void> _showAllCast(
    BuildContext context,
    List<Performer> cast,
  ) {
    final viewPadding = MediaQuery.of(context).viewPadding;

    return showMaterialModalBottomSheet(
      context: context,
      useRootNavigator: true,
      backgroundColor: Theme.of(context).backgroundColor,
      builder: (context) => ListView.separated(
        physics: const ClampingScrollPhysics(),
        controller: ModalScrollController.of(context),
        separatorBuilder: (_, __) => const SizedBox(height: 15),
        padding: viewPadding,
        itemBuilder: (_, index) {
          final performer = cast[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: PerformerListTile(
              performer: performer,
              mode: Axis.vertical,
            ),
          );
        },
        itemCount: cast.length,
      ),
    );
  }
}

class PerformerListTile extends StatelessWidget {
  const PerformerListTile({
    Key? key,
    required this.performer,
    required this.mode,
  }) : super(key: key);

  final Performer performer;
  final Axis mode;

  @override
  Widget build(BuildContext context) {
    final info = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          performer.name,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          performer.character,
          style: TextStyle(
            fontSize: 12,
            color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.5),
          ),
        ),
      ],
    );

    return Row(
      children: [
        _Avatar(
          imagePath: performer.profilePath,
        ),
        const SizedBox(width: 10),
        if (mode == Axis.horizontal) info else Expanded(child: info),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    required this.imagePath,
  });
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        color: Colors.white,
        width: 50,
        height: 50,
        child: imagePath != null
            ? ExtendedImage.network(
                Env.getImageUrl(imagePath!),
                fit: BoxFit.cover,
              )
            : const Icon(
                AppIcons.person_filled,
                size: 30,
                color: AppColors.dark,
              ),
      ),
    );
  }
}
