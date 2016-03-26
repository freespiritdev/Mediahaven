require 'rss'
require 'open-uri'

rss_feed = "http://www.fandango.com/rss/comingsoonmovies.rss"

rss_content = ""

open(rss_feed) do |f|
   rss_content = f.read
end

rss = RSS::Parser.parse(rss_content, false)

rss_html = ""

rss.items.each do |item|
   rss_html << "<p><a href='#{item.link}'>#{item.title}</a><br />"
   rss_html << "#{item.description}</p>" 
end

File.open("comingsoon.html", "w") do |f|
   f.write rss_html
end

