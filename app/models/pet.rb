class Pet < ApplicationRecord

  SPECIES = ['Dog', 'Cat', 'Fish', 'Rabbit', 'Turtle', 'Hamster']

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

end
