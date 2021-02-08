require 'net/http'
require 'json'

station_code = '31005'

url = 'https://velib-metropole-opendata.smoove.pro/opendata/Velib_Metropole/station_status.json'


SCHEDULER.every '1m', :first_in => 0 do |job|
  uri = URI(url)
  response = Net::HTTP.get(uri)
  alldata = JSON.parse(response)
  mystation = alldata["data"]["stations"].find {|h1| h1['stationCode']==station_code}

  bikes = mystation['num_bikes_available_types']
  mecanic = bikes[0]['mechanical']
  elec = bikes[1]['ebike']
  send_event('velib', { name: "Square Denise Buisson", mecanic: mecanic, elec: elec })

end
