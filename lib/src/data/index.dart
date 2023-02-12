library data;

import 'package:injectable/injectable.dart';
import 'package:sunday/src/models/index.dart';

part 'goals_api.dart';

class PaginatedResult<T> {
  PaginatedResult(this.result, this.nextPageToken);

  final T result;
  final String nextPageToken;

  @override
  String toString() {
    return 'PaginatedResult(result: $result, nextPageToken: ${nextPageToken.isEmpty ? '<end>' : nextPageToken})';
  }
}
