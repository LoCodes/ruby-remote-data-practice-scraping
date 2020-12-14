require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

doc.css(".title-oE5vT4") #=> Change Things 
    #=> <h1 class="headline-26OIBN">Change things</h1>
# p doc.css(".headline-26OIBN")  #=> [#<Nokogiri::XML::Element:0x3fe13ac3fd10 name="h1" attributes=[#<Nokogiri::XML::Attr:0x3fe13ac3fc98 name="class" value="headline-26OIBN">] 
    #children=[#<Nokogiri::XML::Text:0x3fe13ac3f838 "Change things">]>]


courses = doc.css(".title-oE5vT4")

courses.each do |course|
    puts course.text.strip
end 

