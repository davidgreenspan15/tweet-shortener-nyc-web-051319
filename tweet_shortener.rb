
def dictionary
  words = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end
def word_substituter(string)
string.split(" ").map do |x|
  if dictionary.keys.include?(x.downcase)
    x = dictionary[x.downcase]
  else
    x
  end
end.join(" ")
end

def bulk_tweet_shortener(tweets)
tweets.map do |x|
puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweets)
  if tweets.length > 140
word_substituter(tweets)
elsif tweets.length <= 140
   tweets
  end

end

def shortened_tweet_truncator(tweets)
  if tweets.length > 140
word_substituter(tweets)[0..136] + "..."
elsif tweets.length <= 140
   tweets
    end
  end
