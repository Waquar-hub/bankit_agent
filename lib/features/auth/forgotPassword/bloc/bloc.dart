import 'package:bankit_agent/features/auth/auth_repo.dart';
import 'package:bankit_agent/features/auth/forgotPassword/bloc/event.dart';
import 'package:bankit_agent/features/auth/forgotPassword/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordBloc extends Bloc<ChangePasswordEvent,ForgotPasswordState>{
  final AuthRepo repo;
  ForgotPasswordBloc({required this.repo}):super(ForgotPasswordState.initial()){
    on<SubmitEvent>((SubmitEvent event,emit){
      emit(state.copyWith(isLoading: true));
      emit(state.copyWith(isLoading: true));
    });
  }

  _submit(SubmitEvent event, emit) async {
    emit(state.copyWith(isLoading: true,));
    Map<String, String> body = {
      "mobileNo": '',
    };
    /*try {
      LoginResponse response = await repository.verifyOtp(body).catchError(
          handleErrorWithContext(event.pageContext));
      if (response.status == "0") {
        event.pageContext.go("/dashboardPage");
      } else if (response.status == "1") {
        AppFlushBar.flushBar(
            response.message, event.pageContext, Colors.redAccent);
      }
    } finally {
      emit(state.copyWith(isLoading: false,));
    }*/
  }
}