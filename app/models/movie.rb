class Movie < ActiveRecord::Base
	validates :title, :release_year, :price, :description, :imdb_id, :poster_url, presence: true
	validates :imdb_id, :poster_url, uniqueness: true

	def poster
    "http://ia.media-imdb.com/images/M/#{poster_url}"
  end

  def imdb
    "http://www.imdb.com/title/#{imdb_id}/"
  end
end