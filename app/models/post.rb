class Post < ApplicationRecord
  validates :title, :description presence: true
  validates :title, length: {minimum: 50}
  validates :description, length: {maximum: 240}

  before_save do
    self.title = self.title + " Osiris"
  end

end
