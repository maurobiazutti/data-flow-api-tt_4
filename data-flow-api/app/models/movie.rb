class Movie < ApplicationRecord
  validates :show_id, presence: true, uniqueness: true

  scope :ordered, -> { order(:release_year) }

  scope :by_year, ->(year) { where(release_year: year) }

  scope :by_genre, ->(genre) {
    where("listed_in ILIKE ?", "%#{genre}%")
  }

  scope :by_country, ->(country) {
    where("country ILIKE ?", "%#{country}%")
  }
end
