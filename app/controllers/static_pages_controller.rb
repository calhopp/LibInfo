class StaticPagesController < ApplicationController

	def home
		url = 'http://news.google.com/news?cf=all&hl=en&pz=1&ned=us&output=rss'
		@feed = Feedjira::Feed.fetch_and_parse url
		@title = @feed.title
		@feedurl = @feed.url
		@entries = @feed.entries
	end

end
