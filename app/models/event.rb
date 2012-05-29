class Event < ActiveRecord::Base

  def self.event_count
    self.first ? self.first.count : nil
  end
end
