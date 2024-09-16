import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project/register/data/models/register_model.dart';
import 'package:project/register/data/repositories/register_repository.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterRepository repository;
  RegisterBloc({
    required this.repository,
  }) : super(RegisterInitial()) {
    on<regisAuthterEvent>((event, emit) async {
      try {
        emit(RegisterLoading());
        final singUp = await repository.register(
            name: event.name,
            email: event.email,
            password: event.password,
            city: event.city,
            phone: event.phone,
            adress: event.address);
        emit(RegisterSuccess(user: singUp));
      } catch (err) {
        emit(RegisterFailure(message: err.toString()));
      }
    });
  }
}
