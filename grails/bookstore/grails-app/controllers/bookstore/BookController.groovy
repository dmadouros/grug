package bookstore

class BookController {

   def index() {
      def author = Author.get(params.authorId)
      def books = author.books

      [author: author, books: books]
   }

   def create() {
      def author = Author.get(params.authorId)

      [author: author]
   }

   def save() {
      def book = new Book(params)

      if (book.save()) {
         flash.notice = "Book saved successfully!"
         redirect(action: 'index', params: [authorId: book.author.id])
      }
      else {
         render(view: 'create', model: [book: book, author: book.author])
      }
   }
}
