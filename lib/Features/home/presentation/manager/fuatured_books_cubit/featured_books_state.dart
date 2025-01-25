part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMassage;

  const FeaturedBooksFailure( this.errorMassage);
}
final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel>books;

  const FeaturedBooksSuccess({required this.books});
}


