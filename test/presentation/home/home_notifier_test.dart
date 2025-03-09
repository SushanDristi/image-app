import 'package:flutter_test/flutter_test.dart';
import 'package:image_app/base/api/failure.dart';
import 'package:image_app/domain/repo/image/image_repo.dart';
import 'package:image_app/presentation/home/provider/home_notifier.dart';
import 'package:image_app/data/model/image/image_model.dart';
import 'package:image_app/presentation/provider/image_provider.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod/riverpod.dart';
import 'package:dartz/dartz.dart';

class MockImageRepo extends Mock implements ImageRepo {}

void main() {
  late ProviderContainer container;
  late MockImageRepo mockImageRepo;

  setUp(() {
    mockImageRepo = MockImageRepo();
    container = ProviderContainer(
      overrides: [
        imageRepoProvider.overrideWithValue(mockImageRepo),
      ],
    );
  });

  test('Initial state should be AsyncData(null)', () {
    final notifier = container.read(homeNotifierProvider.notifier);
    expect(notifier.state, AsyncData<ImageModel?>( null));
  });

  test('getImages() should update state with fetched images', () async {
    final notifier = container.read(homeNotifierProvider.notifier);
    final mockData = ImageModel(total: 100, totalHits: 20, hits: []);

    when(() => mockImageRepo.getImages(any()))
        .thenAnswer((_) async => Right(mockData));

    await notifier.getImages();
    expect(notifier.state.value, mockData);
  });

  test('getImages() should set AsyncError on failure', () async {
    final notifier = container.read(homeNotifierProvider.notifier);

    when(() => mockImageRepo.getImages(any()))
        .thenAnswer((_) async => Left(ServerFailure("Api Error")));

    await notifier.getImages();
    expect(notifier.state, isA<AsyncError>());
  });
}
