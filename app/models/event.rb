class Event < ApplicationRecord

  def next_event
    array = Array.new(3)
    i = 0
    c = 1
    today = Date.today
    while array[i]<3 do
      d = Event.find(c)
      if d.Date > today
        next_event.d = array[i]
      i+1
    end
 c+1
    end
  end

  def countdown
    today = Date.today
    first_event = array[0]
    if first_event > today
    countdown = (first_event - today).to_i
    else
      countdown = (first_event.next_year - today).to_i
    end
  end
end
