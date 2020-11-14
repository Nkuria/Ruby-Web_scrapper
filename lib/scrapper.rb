require 'HTTParty'
require 'Nokogiri'
require 'byebug'
class Scrapper
  def parser
    link = 'https://www.kayak.com/Zanzibar-Hotels.1557.hotel.ksp?a=adwordssearch&encoder=5_1&enc_aid=93646239998&enc_tid=dsa-866536695082&enc_locp=9076864&enc_loci=&enc_mt=b&enc_n=g&enc_d=c&enc_cid=414735300154&enc_pos=&gclid=Cj0KCQiAnb79BRDgARIsAOVbhRptNtM-fhda6l2GDkHhhqZPooUxtig6EAEHSeVi5MLCj1qwmlOAY7saAm33EALw_wcB'
    raw_page = HTTParty.get(link)
    parsed_page = Nokogiri::HTML(raw_page)
  end
  def store
    all_hotels = Array.new
    hotels = parser.css('div.slickHotelCardReworked')
    first_hotel = hotels.first
    hotels.each do |hotel|
      each_hotel = {
        name: hotel.css('a.hotelCard__title').text,
        price: hotel.css('span.hotelCard__price').text.split('+')[0],
        amenities: hotel.css('span.freebie__text').text,
        booking_link: "https://www.kayak.com" + hotel.css('div.hotelCard__informationWrapper__leftSide').css('a')[0].attributes["href"].value
      }
      all_hotels << each_hotel 
       
    end
    # byebug
    all_hotels
  end
end
