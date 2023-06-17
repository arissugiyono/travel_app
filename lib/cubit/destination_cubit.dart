import 'package:airplane_app/models/destination_model.dart';

import 'package:airplane_app/services/destination_service.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  void fetchDestinations() async {
    try {
      emit(DestinationLoading());

      List<destinationModel> destinations =
          await DestinationService().fetchDestinations();

      emit(DestinationSucess(destinations));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }
}
