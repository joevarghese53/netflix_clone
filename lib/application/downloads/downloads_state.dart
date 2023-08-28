part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isloading,
    required List<Downloads> downloads,
    required Option<Either<MainFailure, List<Downloads>>> downloadsSorFoption,
  }) = _DownloadsState;
  factory DownloadsState.initial() {
    return const DownloadsState(
      isloading: false,
      downloadsSorFoption: None(),
      downloads: [],
    );
  }
}
