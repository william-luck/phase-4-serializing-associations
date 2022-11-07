class DirectorMovieSerializer < ActiveModel::Serializer
  # So these attributes are on the movie, not the director. So the last one in the title? 

  attributes :title, :year

  has_many :reviews

end
