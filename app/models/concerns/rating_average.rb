module RatingAverage
  extend ActiveSupport::Concern
  
  def average_rating
    self.ratings.pluck(:score).sum
  end
end
