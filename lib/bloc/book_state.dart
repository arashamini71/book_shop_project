part of 'book_bloc.dart';

class BookState extends Equatable {
  final List<Book> books;
  final bool isLoading;

  const BookState({
    required this.books,
    required this.isLoading,
  });

  factory BookState.empty() {
    return const BookState(
      books: [],
      isLoading: false,
    );
  }

  BookState copyWith({List<Book>? books, bool? isLoading}) {
    return BookState(
      books: books ?? this.books,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object> get props => [books, isLoading];
}
