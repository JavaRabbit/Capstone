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
