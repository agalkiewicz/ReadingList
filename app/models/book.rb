class Book < ActiveRecord::Base
  
  #scope :finished, ->{ where('finished_on IS NOT NULL') }
  scope :finished, ->{ where.not(finished_on: nil) }
  scope :recent, ->{ where('finished_on > ?', 2.days.ago) }
  scope :search, ->(keyword){ where(title: keyword) if keyword.present? }
  #Returns a collection. When keyword = nil, returns all books.

  def finished?
    finished_on.present?
  end
end
