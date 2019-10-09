class Buddy < ApplicationRecord
  validates :email, uniqueness: true, presence: true, format: { with: /\A.*@.*\.com\z/ }
  validates :password, presence: true
  validates :name, :url, :age, :batch, presence: true
end
