import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:test_project/domain/api_key.dart';

import '../../domain/home/home_service.dart';
import '../../domain/home/models/home/home_list/home_list.dart';
import '../../domain/main_failures.dart';

// this annotaion from injectable package for initializatin for loginservice class which means whenever bloc activate
// the loginService function call  it calls loginImpliments mehods
@LazySingleton(as: HomeService)
class HomeImpliments implements HomeService {
  @override
  Future<Either<MainFailure, HomeList>> getHomeListData(String value) async {
    try {
      // for http client call
      final Response response = await Dio(BaseOptions()).get(
          'https://api.nytimes.com/svc/topstories/v2/${value}.json',
          queryParameters: {'api-key': apiKey});

      if (response.statusCode == 200) {
        // if request successfull pass data to model class
        final result = HomeList.fromJson(response.data);
// right object comes from dart package .it wrap result is successfull
        return Right(result);
      } else {
        // wrapper class for if if request faailed pass thourgh this wrappper class
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
