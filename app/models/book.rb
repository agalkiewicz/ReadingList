class Book < ActiveRecord::Base

  has_many :book_genres
  has_many :genres, through: :book_genres

  #scope :finished, ->{ where('finished_on IS NOT NULL') }
  scope :finished, ->{ where.not(finished_on: nil) }
  scope :recent, ->{ where('finished_on > ?', 2.days.ago) }
  #Returns a collection. When keyword = nil, returns all books.
  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }
  scope :filter, ->(name){
    joins(:genres).where(genres: { name: name }) if name.present?
  }
  #scope :filter, ->(genre_id){ joins(:book_genres).where('book_genres.genre_id = ?', genre_id) }

  before_save :set_keywords

  def finished?
    finished_on.present?
  end

  protected
    def set_keywords
      self.keywords = [title, author, description].map(&:downcase).join(' ')
    end
end
