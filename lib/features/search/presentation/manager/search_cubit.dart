import 'package:bloc/bloc.dart';
import 'package:bookly/features/search/data/repo/search_repo.dart';
import 'package:bookly/features/search/presentation/manager/search_states.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit(this.searchRepo) : super(SearchInitialState());

  SearchRepo searchRepo;

  Future<void> search({required searchKeyWord}) async {
    emit(SearchLoadingState());
    var response = await searchRepo.search(searchKeyWord: searchKeyWord);
    response.fold((failure) {
      emit(SearchFailureState(errorMessage: failure.toString()));
    }, (books) {
      emit(SearchSuccessState(bookModel: books));
    });
  }
}
