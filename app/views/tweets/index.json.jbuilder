json.array!(@tweets) do |tweet|
  json.id tweet.id
  json.body tweet.body
  json.handle tweet.user.handle
  json.url tweet_url(tweet, format: :json)
end
