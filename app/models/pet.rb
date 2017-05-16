class Pet < ActiveRecord::Base
  # Relation with people table
#   belongs_to :person, class_name: 'Person'

  # Validations
  validates :name, presence: true
  validates :age, presence: true
  validates :alive, presence: true
  validates :sex, presence: true #, inclusion: {in: %w(male female), message: "%{value} is not a valid sex"}
  validates :type, presence: true #, inclusion: {in: %w(dog cat turtle rabbit), message: "%{value} is not a valid pet"}
  validates :owner, presence: true

end
