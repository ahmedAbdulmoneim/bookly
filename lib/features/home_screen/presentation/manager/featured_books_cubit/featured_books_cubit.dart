import 'package:bloc/bloc.dart';
import 'package:bookly/features/home_screen/data/repo/home_repo.dart';
import 'package:bookly/features/home_screen/presentation/manager/featured_books_cubit/featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccessState(books));
    });
  }
}
