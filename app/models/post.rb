class Post < ApplicationRecord
  validates :brand, {presence: true}
  belongs_to :user

end
