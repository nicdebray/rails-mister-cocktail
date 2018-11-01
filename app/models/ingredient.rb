class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true, presence: true
  before_destroy :hasdose?

  private
  def hasdose?
    dose.empty?
  end
end
