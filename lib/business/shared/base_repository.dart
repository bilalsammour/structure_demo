import 'package:structure_demo/generated/l10n.dart';
import 'package:structure_demo/services/requests/request_all.dart';

abstract class BaseRepository {
  final globalRequest = GlobalRequest();

  Future init(bool withToken) => _addHeaders(withToken);

  Future<void> _addHeaders(bool withToken) async {
    globalRequest.addHeader('Content-Type', 'application/json; charset=UTF-8');
    globalRequest.addHeader('language', S.current.locale);
  }
}
