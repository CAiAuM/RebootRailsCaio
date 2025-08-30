class Event < ApplicationRecord
  has_many :shifts, dependent: :destroy
  has_many :volunteers, through: :shifts

end
