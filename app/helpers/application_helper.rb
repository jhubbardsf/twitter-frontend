module ApplicationHelper
  def twitter_headline(tweets)
    topic = tweets['tweets'][0]['topic']
    if topic == 'nasa'
      topic = 'NASA'
    else
      topic = topic.capitalize
    end

    minutes_ago = ((Time.now - Time.parse(tweets['tweets'][0]['create_date']))/60).to_i
    result = raw("<h1><div class='twitter-headline'>Recent Tweets for \##{topic}</div></h1>")
    result += raw("<h3 class='twitter-headline'>Results from #{pluralize(minutes_ago, 'minute')} ago.</h3>")
    result += raw("<h3 class='twitter-headline'>New results in #{pluralize((10 - minutes_ago), 'minute')}.</h3>")
  end
end
