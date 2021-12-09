import 'package:dio/dio.dart';
import 'package:teste_api/src/modules/home/models/home_slip_model.dart';

class HomeRepository {
  final dio = Dio();
  String url = 'https://api.adviceslip.com/advice';

  Future<SlipModel> requestAdvice() async {
    final response = await dio.get(url);
    var adv = SlipModel.fromJson(response.data);
    return adv;
  }

  /* Future<List<SlipModel>> requestAdvice() async {
    final response = await Dio().get(url);
    final responselist = response.data as List;
    List<SlipModel> slips = [];
    for (var slip in responselist) {
      final advices = SlipModel.fromJson(slip);
      slips.add(advices);
    }
    return slips; */
  //var adv = SlipModel.fromJson(response.data);
  //return adv;
  //return response.data!.map((resp) => SlipModel.fromMap(resp)).toList();
}
