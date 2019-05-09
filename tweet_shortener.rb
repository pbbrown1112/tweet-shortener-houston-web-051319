# Write your code here.
require 'pry'

def dictionary
  dictionary = {
                  "hello" => 'hi',
                  "to" => '2',
                  "two" => '2',
                  "too" => '2',
                  'for' => '4',
                  "four" => '4',
                  'be' => 'b',
                  "you" => 'u',
                  'at' => "@",
                  'and' => "&"
                }
end



def word_substituter(tweet)
  short_arr = []
  tweet_arr = tweet.split
  tweet_arr.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      short_arr << word
    else
      word
      short_arr << word
    end
  end
  short_arr.join(' ')
end

# word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet[0...137] + '...'
  else
    tweet
  end
end
