class Pet < ActiveRecord::Base
  # File
  has_attached_file :picture

  # Validations
  validates :name, presence: true
  validates :age, presence: true
  validates :alive, presence: true
  validates :sex, presence: true #, inclusion: {in: %w(male female), message: "%{value} is not a valid sex"}
  validates :type, presence: true #, inclusion: {in: %w(dog cat turtle rabbit), message: "%{value} is not a valid pet"}
  validates :owner, presence: true
  validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
