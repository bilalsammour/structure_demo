import 'package:structure_demo/business/shared/base_repository.dart';
import 'package:structure_demo/business/shared/view_model_exception.dart';
import 'package:structure_demo/models/map_model.dart';
import 'package:structure_demo/models/shared/results_parent_model.dart';
import 'package:structure_demo/services/requests/request_all.dart';

class CrudItemsRepository<T extends MapModel> extends BaseRepository {
  final String api;
  final T Function(Map<String, dynamic> map) convertor;
  final bool mocked;

  CrudItemsRepository({
    required this.api,
    required this.convertor,
    this.mocked = false,
  });

  Future<List<T>> retrieve({
    required int pageSize,
    required int page,
    required List<String> suffix,
    Map<String, dynamic>? parameters,
  }) async {
    await init(true);

    globalRequest.mocked = mocked;

    globalRequest.addParameter('page_size', pageSize);
    globalRequest.addParameter('page', page);

    if (parameters != null) {
      globalRequest.addMapParameters(parameters);
    }

    final result = await globalRequest.sendRequest(
      requestType: RequestType.get,
      api: api + (suffix.isEmpty ? '' : '/${suffix.join('/')}'),
    );

    if (result.hasError()) {
      throw ViewModelException(error: result.error);
    }

    return ResultsParentModel.fromMap(
      result.map,
    ).getParsedResults<T>(
      (map) => convertor.call(map),
    );
  }

  Future<void> insert({required T item}) async {
    await init(true);

    globalRequest.mocked = mocked;

    final result = await (globalRequest
          ..addMapParameters(
            item.toMap(),
          ))
        .sendRequest(
      requestType: RequestType.post,
      api: api,
    );

    if (result.hasError()) {
      throw ViewModelException(error: result.error);
    }
  }

  Future<void> update({required String id, required T item}) async {
    await init(true);

    globalRequest.mocked = mocked;

    final result = await (globalRequest
          ..addMapParameters(
            item.toMap(),
          ))
        .sendRequest(
      requestType: RequestType.put,
      api: '$api/$id',
    );

    if (result.hasError()) {
      throw ViewModelException(error: result.error);
    }
  }

  Future<void> delete({required String id}) async {
    await init(true);

    globalRequest.mocked = mocked;

    final result = await globalRequest.sendRequest(
      requestType: RequestType.delete,
      api: '$api/$id',
    );

    if (result.hasError()) {
      throw ViewModelException(error: result.error);
    }
  }
}
