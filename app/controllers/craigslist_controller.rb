class CraigslistController < ApplicationController
  def index
    @response = HTTParty.get("https://miami.craigslist.org/search/sof")
    @dom = Nokogiri::HTML(@response.body)

    @listings = @dom.css('a.hdrlnk')


    @listings.each do |listing|
      @listing= listing.content
    end

  end
end
