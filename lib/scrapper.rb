require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'Pry'
class Scrapper
  def parser
    link = 'https://www.kayak.com/Zanzibar-Hotels.1557.hotel.ksp?a=adwordssearch&encoder=5_1&enc_aid=93646239998&enc_tid=dsa-866536695082&enc_locp=9076864&enc_loci=&enc_mt=b&enc_n=g&enc_d=c&enc_cid=414735300154&enc_pos=&gclid=Cj0KCQiAnb79BRDgARIsAOVbhRptNtM-fhda6l2GDkHhhqZPooUxtig6EAEHSeVi5MLCj1qwmlOAY7saAm33EALw_wcB'
    raw_page = HTTParty.get(link)
    parsed_page = Nokogiri::HTML(raw_page)
  end
  
end
