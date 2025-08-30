class Volunteer < ApplicationRecord
  has_many :shitfs

  validates :name, presence: true, uniqueness: true
end
