json.array!(@match_picks) do |match_pick|
  json.extract! match_pick, :id, :userID, :matchID, :userPick, :result, :points, :closed
  json.url match_pick_url(match_pick, format: :json)
end
