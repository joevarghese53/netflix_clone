import 'package:netflix_clone_app/core/strings.dart';
import 'package:netflix_clone_app/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = '$kbaseurl/trending/all/day?api_key=$apikey';
  static const search = '$kbaseurl/trending/movie/day?api_key=$apikey';
}
