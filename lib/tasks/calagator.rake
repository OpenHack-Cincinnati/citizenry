require 'httparty'

namespace :calagator do
  desc "Update upcoming events count"
  task :update_count => :environment do
    events = HTTParty.get("http://calendar.madeincincy.com/events.json")
    if events && count = events.count
      event = Event.first || Event.new
      event.update_attribute(:count, events.count)
    end
  end
end
