class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum('rating')
    # binding.pry
  end

  def self.most_popular_show
    Show.where("rating = ?",self.highest_rating).first
    # binding.pry
  end

  def self.lowest_rating
    Show.minimum('rating')
    # binding.pry
  end

  def self.least_popular_show
    Show.where("rating = ?",self.lowest_rating).first
  end

  def self.ratings_sum
    Show.sum(:rating)
    # binding.pry
  end

  def self.popular_shows
    Show.where("rating > '5'")
    # binding.pry
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
    # binding.pry
  end

end