class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence: { message: "cannot be blank" }
  has_many :doses
  default_scope -> { order(name: :ASC) }
end
