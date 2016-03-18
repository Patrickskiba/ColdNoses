class Event < ApplicationRecord

  def nextEvent
    nextEvent = Array.new(3)
    i = 0
    c = 1
    today = Date.today
    while nextEvent[i]<3 do
      d = Event.find(c)
      if d.Date > today
        nextEvent[i] = d
      i+1
    end
 c+1
    end
  end

  def countdown
    today = Date.today
    firstEvent = nextEvent[0]
    if firstEvent > today
    countdown = (firstEvent - today).to_i
    else
      countdown = (firstEvent.next_year - today).to_i
    end
  end
end
