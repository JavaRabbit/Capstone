class NewsEntry < ActiveRecord::Base

  def update_from_feed(feed_url)
    feed = Feedjira::Feed.fetch_and_parse(feed_url)
    feed.entries.each do |entry|

      # this is equivalent to a create method
      # note how this doesn't check if entry already exists :(
      aa = NewsEntry.new
      aa.name = entry.title
      aa.summary = entry.summary
      aa.url = entry.url
      aa.published_at = entry.published
      aa.guid = entry.id
      aa.save
    end
  end

  def update_from_feed_continuously(feed_url, delay_interval = 15.second)
    feed = Feedjira::Feed.fetch_and_parse("http://feeds.finance.yahoo.com/rss/2.0/headline?s=yhoo&region=US&lang=en-US")
    add_entries(feed.entries)
    loop do
      sleep delay_interval
      feed = Feedjira::Feed.update(feed)
      add_entries(feed.new_entries)
  end

  private

  def add_entries(entries)
    entries.each do |entry|
      aa = NewsEntry.new
      aa.name = entry.title
      aa.summary = entry.summary
      aa.url = entry.url
      aa.published_at = entry.published
      aa.guid = entry.id
      aa.save
    end
  end
end
end
