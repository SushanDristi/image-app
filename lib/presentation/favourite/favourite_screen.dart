import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_app/presentation/favourite/provider/fav_notifier.dart';
import 'package:image_app/presentation/home/home_screen.dart';
import 'package:image_app/presentation/widget/image_widget.dart';


@RoutePage()
class FavouriteScreen extends ConsumerWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesState = ref.watch(favNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Favorite Images')),
      body: favoritesState.when(
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
        data: (favorites) {
          if (favorites == null || favorites.isEmpty) {
            return Center(child: Text('No favorites added yet.'));
          }
          print("this is fav $favorites");
          return GridView.builder(
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.75,
            ),
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              final image = favorites[index];
              return ImageWidget(image: image);
            },
          );
        },
      ),
    );
  }
}