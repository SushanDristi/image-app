import 'package:flutter_test/flutter_test.dart';
import 'package:image_app/data/model/image/image_model.dart';
import 'package:image_app/presentation/favourite/provider/fav_notifier.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  late ProviderContainer container;
  late FavNotifier notifier;
  final mockHit = Hit(id: 1, previewURL: "image_url", );

  setUp(() {
    container = ProviderContainer();
    notifier = container.read(favNotifierProvider.notifier);
  });

  test('Initial state should be AsyncData(null)', () {
    expect(notifier.state, const AsyncData<List<Hit>?>(null));
  });

  test('addFav() should add an image to favorites', () {
    notifier.addFav(mockHit);
    expect(notifier.state.value, contains(mockHit));
  });

  test('removeFav() should remove an image from favorites', () {
    notifier.addFav(mockHit);
    notifier.removeFav(mockHit);
    expect(notifier.state.value, isNot(contains(mockHit)));
  });

  test('toggleFavorite() should add and remove an image', () async {
    await notifier.toggleFavorite(mockHit);
    expect(notifier.state.value, contains(mockHit));

    await notifier.toggleFavorite(mockHit);
    expect(notifier.state.value, isNot(contains(mockHit)));
  });
}
