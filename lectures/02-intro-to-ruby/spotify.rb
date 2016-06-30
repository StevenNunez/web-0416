require 'rest-client'
require 'json'
require 'pry'

def get_chart_data
  chart_string = RestClient.get("https://spotifycharts.com/api/?type=regional&country=global&recurrence=daily&date=latest")
  JSON.parse(chart_string)
end

def current_position(song)
  song["current_position"]
end

def previous_position(song)
  song["previous_position"]
end

def track_name(song)
  song["track"]["name"]
end

def artist_names(song)
  names = song["track"]["artists"].collect{|s| s["name"]}
  if names.size == 1
    names.first
    # names.join(" and ") works here too...
  elsif names.size == 2
    names.join(" and ")
  else
    last_artist = names.pop
    "#{names.join(', ')} and #{last_artist}"
  end
end

def change(song)
  current = current_position(song)
  previous = previous_position(song)
  
  if previous.nil?
    "Entered the charts at #{current}."
  elsif current == previous
    "No Change."
  elsif current > previous
    "Went down #{current - previous} spots."
  else
    "Went up #{previous - current} spots."
  end
end
# work = get_chart_data["entries"]["items"].first
# result = "#{current_position(work)}. #{track_name(work)} by #{artist_names(work)}"
tracks = get_chart_data["entries"]["items"]
tracks.each do |track|
  puts "#{current_position(track)}. #{track_name(track)} by #{artist_names(track)}. #{change(track)}"
end
