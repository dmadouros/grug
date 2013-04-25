package bookstore

import grails.test.mixin.*
import org.junit.*

@TestFor(Book)
class BookTests {

   def sut

   @Before
   void setUp() {
      def author = new Author(name: 'Kent Beck')
      sut = new Book(title: 'Smalltalk Best Practice Patterns', author: author)
   }

   void test_book_byDefault_isValid() {
      sut.validate()

      assert !sut.hasErrors()
   }

   void test_book_whenTitleNotPresent_isInvalid() {
      sut.title = null

      sut.validate()

      assert sut.hasErrors()
   }

   void test_book_whenAuthorNotPresent_isInvalid() {
      sut.author = null

      sut.validate()

      assert sut.hasErrors()
   }
}
