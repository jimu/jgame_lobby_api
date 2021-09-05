class Match < ApplicationRecord
  validates :title, presence: true, length: {minimum: 3 }

  has_many :user
  has_many :addresses
end
