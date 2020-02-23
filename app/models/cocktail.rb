class Cocktail < ApplicationRecord
  has_many :reviews
  has_many :ingredients, through: :doses
  has_many :doses, dependant: :destroy
  validates :names, presence: true, uniqueness: true
end
