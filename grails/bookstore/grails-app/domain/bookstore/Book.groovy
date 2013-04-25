package bookstore

class Book {
  String title
  static belongsTo = [author: Author]    

  static constraints = {
    title nullable: false, blank: false
  }
}
