require 'rlocu'

class LocuResult
  define_singleton_method :loco_result do |request|
    Rlocu::VenueSearch.query(postal_code: '90728', cuisine: 'Thai') do |v|
      puts v.name
    end
  end
end
