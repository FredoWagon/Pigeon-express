class Bird < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings

  validates :name, presence: true

  geocoded_by :address #mapbox
  after_validation :geocode, if: :will_save_change_to_address? #mapbox

  include PgSearch::Model #PgSearch
  pg_search_scope :search_by_name_or_species,
    against: [ :name, :species],
    using: {
      tsearch: { prefix: true }
    }

end
