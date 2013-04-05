class Album < ActiveRecord::Base

   attr_accessible :title, :band_id, :song_ids

   belongs_to :band
   has_many :songs
   has_many :tracks, through: :songs

   validates :title, :band_id, presence: true

end
