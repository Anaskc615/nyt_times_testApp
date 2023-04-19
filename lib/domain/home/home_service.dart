import 'package:dartz/dartz.dart';
import 'package:test_project/domain/home/models/home/home_list/home_list.dart';

import '../main_failures.dart';

// this abstract call take all function call related to home screen and it can be impliment by home repository
abstract class HomeService {
  // which means the  method is asynchronous and can return either a mainfailure or a loginresponse wrapped in an Either monad.
  Future<Either<MainFailure, HomeList>> getHomeListData(String value);
}
