class Space

  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, Text
  property :price, Integer
  property :available_from, Date
  property :available_to, Date

  belongs_to :user
  has n, :available_dates, :through => Resource

end
