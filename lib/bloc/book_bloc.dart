import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:book_shop_project/data/book.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart' show rootBundle;

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc() : super(BookState.empty()) {
    on<BookEvent>(_onGetBooks);
  }

  void _onGetBooks(BookEvent event, Emitter<BookState> emit) async {
    emit(state.copyWith(isLoading: true));
    var json = await getJson();
    var books = (jsonDecode(json)['books'] as List)
        .map((e) => Book.fromJson(e))
        .toList();
    emit(state.copyWith(books: books, isLoading: false));
  }

  Future<String> getJson() {
    return rootBundle.loadString('assets/data/books.json');
  }
}
