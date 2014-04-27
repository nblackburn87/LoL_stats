class Game < ActiveRecord::Base
  validates :champion, presence: true
  validates :kills, presence: true
  validates :deaths, presence: true
  validates :assists, presence: true

  def calculate_kda
    kda = (kills + assists) / deaths
    kda.round(2)
  end
end
