class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings, dependent: :destroy

  def average_rating
    self.ratings.pluck(:score).sum
  end

  def to_s
    self.name + " by " + self.brewery.name
  end
end
