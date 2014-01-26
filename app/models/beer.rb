class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings

  def average_rating
    self.ratings.pluck(:score).sum
  end
end
