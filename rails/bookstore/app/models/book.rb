class Book < ActiveRecord::Base
  attr_accessible :author, :title
  belongs_to :author

  validates :title, presence: true
  validates :author, presence: true
end
