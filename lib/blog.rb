class Blog
  def initialize url 
    @url = url
  end
  
  def latest_title
    thewebsite = Net::HTTP.get(URI.parse(@url))
    document = Hpricot(thewebsite)
(document/"/html/body/div[2]/div/div[2]/div/div/h3").first.inner_html
  end
end
