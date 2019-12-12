class Post < ApplicationRecord
  has_many :answers

  validates :body, presence: true,
                    length: { minimum: 5 }
end
