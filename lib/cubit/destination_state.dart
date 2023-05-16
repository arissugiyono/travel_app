part of 'destination_cubit.dart';

abstract class DestinationState extends Equatable {
  const DestinationState();

  @override
  List<Object> get props => [];
}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {}

class DestinationSucess extends DestinationState {
  // parameter/field
  final List<destinationModel> destinations;

  //constructor
  DestinationSucess(this.destinations);

  @override
  List<Object> get props => [destinations];
}

class DestinationFailed extends DestinationState {
  final String error;
  //constructor
  DestinationFailed(this.error);
  @override
  List<Object> get props => [error];
}
