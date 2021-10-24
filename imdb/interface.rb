require "yaml"
require_relative "scraper"

puts "Fetching URLs"
urls = fetch_movie_urls

hash_of_info = scrape_movie(urls)
