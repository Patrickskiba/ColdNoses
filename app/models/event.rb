class Event < ApplicationRecord
  has_many :comments, dependent: :destroy
  def current_date
    Date.today
  end
end
