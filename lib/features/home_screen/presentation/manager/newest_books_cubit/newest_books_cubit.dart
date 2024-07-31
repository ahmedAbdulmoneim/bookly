import 'package:bloc/bloc.dart';
import 'package:bookly/features/home_screen/data/repo/home_repo.dart';
import 'package:bookly/features/home_screen/presentation/manager/newest_books_cubit/newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(NewestBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccessState(books));
    });
  }
}
