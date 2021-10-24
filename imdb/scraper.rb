require "open-uri"
require "nokogiri"

def fetch_movie_urls
  # TODO Fetch the urls of the top 5 movies of imdb
  top_url = "https://www.imdb.com/search/title/?groups=top_250&sort=user_rating"
  doc = Nokogiri::HTML(URI.open(top_url).read)
  movies = doc.search('.lister-item-header a')
  return movies.take(5).map do |movie|
    "https://www.imdb.com/#{movie['href']}"
  end
end

def scrape_movie(urls)
  # Todo scrape movie information of those urls
  for url in urls do
    doc = Nokogiri::HTML(URI.open(url).read)
    title = doc.search("h1").text
    plot = doc.search(".GenresAndPlot__TextContainerBreakpointXS_TO_M-cum89p-0").text
    
  end
end
