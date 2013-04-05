class Band < ActiveRecord::Base
  attr_accessible :name, :artist_ids

  has_many :collaborations, dependent: :destroy
  has_many :artists, through: :collaborations
  has_many :albums, dependent: :destroy
  has_many :songs, through: :albums
  has_many :tracks, through: :songs

  validates :name, presence: true, uniqueness: true

end
