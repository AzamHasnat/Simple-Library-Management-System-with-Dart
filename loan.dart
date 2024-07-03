
import 'book.dart';
import 'member.dart';

class Loan{
  Book? book;
  Member? member;
  DateTime? loanDate;
  DateTime? returnDate;

  Loan(this.book, this.member, this.loanDate, [this.returnDate]);

  void retunrBook(){
    returnDate = DateTime.now();
    book?.isAvailable = true;
  }
}
