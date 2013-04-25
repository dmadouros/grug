package bookstore

class AuthorController {

  def index() { 
    def authors = Author.list()

    [authors: authors]
  }

  def create() {    
  }

  def save() {
    def author = new Author(params)

    if (author.save()) {
      redirect(action: 'index')
    }
    else {
      render(view: 'create', model: [author: author])
    }
  }
}
