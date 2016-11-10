class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :doses
  default_scope -> { order(name: :ASC) }
end
