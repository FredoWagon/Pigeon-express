class Bird < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo

  validates :name, presence: true

  geocoded_by :address #mapbox
  after_validation :geocode, if: :will_save_change_to_address? #mapbox

end
