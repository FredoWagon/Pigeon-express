class Bird < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_one_attached :photo

  validates :name, presence: true

  geocoded_by :address #mapbox
  after_validation :geocode, if: :will_save_change_to_address? #mapbox
  extend Geocoder::Model::ActiveRecord

  include PgSearch::Model #PgSearch
  pg_search_scope :search_by_name_or_species,
    against: [ :name, :species],
    using: {
      tsearch: { prefix: true }
    }

end
