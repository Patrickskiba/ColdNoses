class Event < ApplicationRecord
  has_many :comments
  def current_date
    Date.today
  end
end
