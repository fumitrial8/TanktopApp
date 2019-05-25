class Post < ApplicationRecord
  validates :brand, {presence: true}
end
