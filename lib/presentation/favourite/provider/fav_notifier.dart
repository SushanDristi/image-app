import 'package:image_app/data/model/image/image_model.dart';
import 'package:image_app/domain/repo/fav/fav_repo.dart';
import 'package:image_app/presentation/provider/fav_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'fav_notifier.g.dart';

@riverpod
class FavNotifier extends _$FavNotifier {
  @override
  AsyncValue<List<Hit>?> build() => const AsyncData(null);

  void setFavs(List<Hit> favs) {
    state = AsyncData(favs);
  }

  void addFav(Hit hit) {
    state.whenData((favs) => state = AsyncData([...favs ?? [], hit]));
  }

  void removeFav(Hit hit) {
    state.whenData((favs) {
      final updatedFavs = favs?.where((h) => h.id != hit.id).toList() ?? [];
      state = AsyncData(updatedFavs);
    });
  }

  void setError(String message) {
    state = AsyncError(message, StackTrace.current);
  }

  void clearFavs() {
    state = const AsyncData([]);
  }

  Future<bool> isFav(Hit hit) async {
    final favs = state.value;
    if (favs == null) return false;
    return favs.any((h) => h.id == hit.id);
  }

  Future<void> toggleFavorite(Hit hit) async {
    final isFavorite = await isFav(hit);
    if (isFavorite) {
      removeFav(hit);
    } else {
      addFav(hit);
    }
  }
}
