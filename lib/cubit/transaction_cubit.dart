import 'package:airplane_app/models/transaction_model.dart';
import 'package:airplane_app/services/transaction_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  void createTransaction(transactionModel transaction) async {
    try {
      emit(TransactionLoading());
      await transactionService().createTransaction(transaction);
      emit(TransactionSucess([]));
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }

  void fetchTransactions() async {
    try {
      emit(TransactionLoading());
      List<transactionModel> transactions =
          await transactionService().fetchTransactions();
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }
}
