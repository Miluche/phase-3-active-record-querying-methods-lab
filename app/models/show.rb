# frozen_string_literal: true

class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end
  def self.most_popular_show
    max_rating = Show.maximum(:rating)
    Show.find_by(rating: max_rating)
  end
  def self.lowest_rating
    Show.minimum(:rating)
  end
  def self.least_popular_show
    l_popular_show = Show.minimum(:rating)
    Show.find_by(rating: l_popular_show)
  end
  def self.ratings_sum
    Show.sum(:rating)
  end
  def self.popular_shows
    Show.where('rating > ?', 5)
  end
  def self.shows_by_alphabetical_order
    Show.order(:name)
  end
end
