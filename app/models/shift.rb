class Shift < ApplicationRecord
  belongs_to :volunteer
  belongs_to :event

  validates :event_id, presence: true
  validates :volunteer_id, presence: true, uniqueness: { scope: :event_id }
  validates :feedback, length: { minimum: 6 }
end
