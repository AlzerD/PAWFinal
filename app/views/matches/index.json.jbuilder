json.array!(@matches) do |match|
  json.extract! match, :id, :block, :round, :date, :day, :time, :venue, :team1, :team2, :result, :resultString, :played
  json.url match_url(match, format: :json)
end
