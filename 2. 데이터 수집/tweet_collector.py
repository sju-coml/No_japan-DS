from twitterscraper import query_tweets
import datetime
import pandas as pd

query1 = "일본 OR 불매 OR 일제 OR no japan OR 일본여행 OR 노재팬"
query2 = "아사히 OR 유니클로 OR 대마도 OR 규슈 OR 후쿠오카 OR 데상트 OR DHC OR 캐논 OR 도요타"
list_of_tweets = query_tweets(query1, lang='ko', begindate=datetime.date(2019,6,1))

print("length: {}".format(len(list_of_tweets)))

tweets = []
ids = []
for i, tweet in enumerate(list_of_tweets):
    ids.append(i+1)
    
    text = tweet.text.replace(',', ' ')
    text = text.replace('\n', ' ')
    tweets.append({
        'username': tweet.username,
        'timestamp': tweet.timestamp,
        'retweets': tweet.retweets,
        'likes': tweet.likes,
        'is_retweet': tweet.is_retweet,
        'text': text
    })

tweet_data = pd.DataFrame(tweets, index=ids)
tweet_data.to_csv('2019-09-21_tweets.csv', encoding='utf-8')

    