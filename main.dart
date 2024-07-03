import 'book.dart';
import 'library.dart';
import 'member.dart';

void main (){
  //Create book 
  Book book1 = Book("To Kill a Mockingbird", " Harper Lee", "0446310786", true);
  Book book2 = Book("1984", "George Orwell", "1443434973", true);
  Book book3 = Book("The Great Gatsby", "F. Scott Fitzgerald", "9780743273565", true);

  //Add book to library 
  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3); 

  library.listBooks();

  //Create member
  Member member1 = Member("John Doe", "12345");

  library.loanBook(book1, member1);
  library.listLoanBooks();
}