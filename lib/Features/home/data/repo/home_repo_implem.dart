import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl( this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=subject:programming&Sorting=newest&Filtering=free-ebooks');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if(e is DioError){
      return left(ServerFailure.fromDioError(e));
    }
     
     return left(ServerFailure(e.toString()));
  }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFutureBooks()async{
   try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=subject:programming&Filtering=free-ebooks');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if(e is DioError){
      return left(ServerFailure.fromDioError(e));
    }
     
     return left(ServerFailure(e.toString()));
  }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) {
    // TODO: implement fetchSimilarBooks
    throw UnimplementedError();
  }
}
