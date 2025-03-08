import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_app/base/utils/utils.dart';
import 'package:image_app/data/model/image/image_model.dart';
import 'package:image_app/presentation/favourite/provider/fav_notifier.dart';

class ImageWidget extends ConsumerWidget {
  final Hit image;

  const ImageWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesState = ref.watch(favNotifierProvider);
    final isFavorite = favoritesState.maybeWhen(
      data: (favorites) => favorites?.contains(image) ?? false,
      orElse: () => false,
    );

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              CachedNetworkImage(
                imageUrl: image.userImageURL,
                fit: BoxFit.cover,
                placeholder:
                    (context, url) =>
                        Center(child: CupertinoActivityIndicator()),
                errorWidget:
                    (context, url, error) => SizedBox(
                      height: Utils.screenWeight(context) * 0.45,
                      child: Center(
                        child: Icon(Icons.error, color: Colors.red),
                      ),
                    ),
              ),
              Positioned(
                top: 4,
                right: 4,
                child: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    if (isFavorite) {
                      showDialog(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              title: Text('Remove from favorites?'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    ref
                                        .read(favNotifierProvider.notifier)
                                        .toggleFavorite(image);
                                    Navigator.pop(context);
                                  },
                                  child: Text('Remove'),
                                ),
                              ],
                            ),
                      );
                    } else {
                      ref
                          .read(favNotifierProvider.notifier)
                          .toggleFavorite(image);
                    }
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Owner: ${image.user}'),
                Text('Size: ${Utils.formatImageSize(image.imageSize)}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
