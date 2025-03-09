import 'dart:ui';

import 'package:image_app/data/model/image/image_model.dart';
import 'package:image_app/domain/repo/image/image_repo.dart';
import 'package:image_app/presentation/provider/image_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_notifier.g.dart';


@riverpod
class HomeNotifier extends _$HomeNotifier {
  int _currentPage = 1;
  bool _hasMore = true;
  final int _perPage = 20;
  Map<String, dynamic> params={};
  @override
  AsyncValue<ImageModel?> build() {
    return const AsyncData(null);
  }

  Future<void> getImages({ Map<String, dynamic>? paramsData}) async {
    final ImageRepo imageRepo = ref.read(imageRepoProvider);
    if(paramsData != null){
      _hasMore = true;
      params = paramsData;
      _currentPage = 1;
    }
    print("this is has more $_hasMore");
    if (!_hasMore) return;

    params['page'] = _currentPage;
    params['per_page'] = _perPage;

    final result = await imageRepo.getImages(params);

    result.fold(
          (failure) => state = AsyncError(failure.message, StackTrace.current),
          (data) {
            if(paramsData != null){
              state = AsyncData(data);

              if (data.hits?.length == data.totalHits) {
                _hasMore = false;
              } else {
                _currentPage++;
              }
            }else{
              final currentHits = state.value?.hits ?? [];
              final newHits = [...currentHits, ...?data.hits];
              state = AsyncData(
                ImageModel(
                  total: data.total,
                  totalHits: data.totalHits,
                  hits:  newHits,
                ),
              );

              if (newHits.length >= (data.totalHits??0)) {
                _hasMore = false;
              } else {
                _currentPage++;
              }
            }

      },
    );
  }


  void resetData() {
    _currentPage = 1;
    _hasMore = true;
    params = {};
    state = const AsyncData(null);
  }
}

