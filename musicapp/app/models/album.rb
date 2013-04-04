class Album < ActiveRecord::Base

   attr_accessible :title, :band_id

   belongs_to :band
   has_many :songs
   has_many :tracks, through: :songs

end
