class Address < ApplicationRecord
  validates :description, presence: true, length: {minimum: 3}
  validates :value,       presence: true, length: {minimum: 3}

  belongs_to :user
end
