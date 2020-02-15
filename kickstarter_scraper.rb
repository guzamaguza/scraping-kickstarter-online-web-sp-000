# require libraries/modules here
require 'nokogiri'
#require 'open-uri'  --- Don't need b/c not a live page
require 'pry'
#require_relative ''

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
end

#selectors
  # projects: kickstarter.css("li.project.grid_4")
  # title: project.css("h2.bbcard_name strong a").text
  # image link: project.css("div.project-thumbnail a img").attribute("src").value
  # description: project.css("p.bbcard_blurb").text
  # location: project.css("u1.project-meta li a span").attribute('class').value

create_project_hash
