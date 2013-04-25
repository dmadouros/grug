require 'spec_helper'

describe Book do
  
  let(:author) { Author.new(name: 'Dave Thomas') }
  let(:book) { Book.new(title: 'The Pickaxe', author: author) }

  it "should not be valid if title not present" do
    book.title = nil

    book.should_not be_valid
  end

  it "should not be valid if author not present" do
    book.author = nil

    book.should_not be_valid
  end
end
