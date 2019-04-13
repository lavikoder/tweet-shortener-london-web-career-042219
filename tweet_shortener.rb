

def dictionary
{
  "hello" => 'hi',
  "too" => '2', 
  "two" => '2',
  "to" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@" ,
  "and" => "&",
}
end

def word_substituter(tweet)
  emp_strg = []
    tweet_arr = tweet.split(" ")
    tweet_arr.each do |word|
      if dictionary.key? word
        emp_strg << dictionary[word]
        
      else
      emp_strg << word
      end
    end
  return emp_strg.join(" ")
end

def bulk_tweet_shortener(tweets)
  emp_strg = []
  tweets.each do |tweets, word|
    tweet_arr = tweets.split(" ")
    tweet_arr.each do |word|
      if dictionary.key? word
        emp_strg << dictionary[word]
      else
      emp_strg << word
      end
    end  
  end
  puts emp_strg.join(" ")
end
    
    
    
    
    