class Game < ActiveRecord::Base
  validates :result, presence: true
  validates :champion, presence: true
  validates :kills, presence: true
  validates :deaths, presence: true
  validates :assists, presence: true
end
