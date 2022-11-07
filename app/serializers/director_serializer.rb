class DirectorSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthplace, :female_director

  # Interesting, including the serizlizer on the association. 
  has_many :movies, serializer: DirectorMovieSerializer
end
