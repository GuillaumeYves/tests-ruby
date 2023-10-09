def time_string(seconds)
  hours = seconds / 3600
  minutes = (seconds % 3600) / 60
  seconds = seconds % 60

  
  formatted_hours = format('%02d', hours)
  formatted_minutes = format('%02d', minutes)
  formatted_seconds = format('%02d', seconds)

  "#{formatted_hours}:#{formatted_minutes}:#{formatted_seconds}"
end
