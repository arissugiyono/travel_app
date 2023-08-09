part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionLoading extends TransactionState {}

class TransactionSucess extends TransactionState {}

class TransactionFailed extends TransactionState {
  final String error;

  //constructor
  TransactionFailed(this.error);

  @override
  // TODO: implement props
  List<Object> get props => [error];
}