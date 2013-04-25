package bookstore

import grails.test.mixin.*
import org.junit.*

@TestFor(Author)
class AuthorTests {

   def sut

   @Before
   void setUp() {
      sut = new Author(name: 'Kent Beck')
   }

   void test_author_byDefault_isValid() {
      sut.validate()

      assert !sut.hasErrors()
   }

   void test_author_whenNameNotPresent_isInvalid() {
      sut.name = null

      sut.validate()

      assert sut.hasErrors()
   }
}
