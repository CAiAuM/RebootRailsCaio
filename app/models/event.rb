class Event < ApplicationRecord
  has_many :shifts, dependent: :destroy
  has_many :volunteers, through: :shifts

  validates :name, :description, :image_url, presence: true, uniqueness: true
end
