import 'book.dart';
import 'loan.dart';
import 'member.dart';

class Library{

  List<Book> books = [];
  List<Loan> loan = [];

  void addBook(Book book){
    books.add(book);
  }

  void loanBook(Book book,Member member){
    if(book.isAvailable){
      book.isAvailable = false;
      loan.add(Loan(book, member, DateTime.now()));
    }else{
      print("Book is not available");
    }
  }

  void listBooks(){
    print("\n-------------------------------------");
    print("List All Books in Library");
    print("-------------------------------------");
    for(var book in books){
      print('Title: ${book.title}, Author: ${book.author}, ISBN: ${book.isbn}, Available: ${book.isAvailable}');
    }
  }


  void listLoanBooks(){
    print("\n-------------------------------------");
    print("List All Loan Books in Library");
    print("-------------------------------------");
    for(var loan in loan){
      print('Title: ${loan.book?.title}, Author: ${loan.book?.author}, ISBN: ${loan.book?.isbn}, Available: ${loan.book?.isAvailable}');
    }
  }
}
