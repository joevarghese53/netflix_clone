import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone_app/domain/search/models/search_response/search_response.dart';
import 'package:netflix_clone_app/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone_app/domain/search/search_service.dart';

import '../../domain/core/api_end_points.dart';

@LazySingleton(as: SearchService)
class SearchImplementation implements SearchService {
  @override
  Future<Either<MainFailure, List<SearchResponse>>> getSearchMovies(
      {required String movieQuery}) async {
    try {
      final Response response = await Dio(BaseOptions())
          .get(ApiEndPoints.search, queryParameters: {'query': movieQuery});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResponse.fromJson(response.data);
        return Right(result as List<SearchResponse>);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
