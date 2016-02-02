require 'nokogiri'
require 'open-uri'

class MenuResult
  define_singleton_method :get_html do |html|
    get_html = open( html )
    return Nokogiri::HTML( get_html )
  end
end
