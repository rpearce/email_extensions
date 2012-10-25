task :call_page do
  require 'net/http'
  url = URI.parse(URI.encode('http://extensions.ridepost.com/api/university_of_south_carolina'))
  response = Net::HTTP.start(url.host, use_ssl: true, verify_mode: OpenSSL::SSL::VERIFY_NONE) do |http|
     http.get url.request_uri
  end
end