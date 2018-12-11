require 'rss'
require 'open-uri'

url = 'https://xkcd.com/rss.xml'
open(url) do |rss|
  feed = RSS::Parser.parse(rss)
  puts "Title: #{feed.channel.title}"
  feed.items.each do |item|
    p item
    puts "Item: #{item.title}"
  end
end
