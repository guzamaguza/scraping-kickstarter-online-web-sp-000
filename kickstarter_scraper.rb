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

create_project_hash
