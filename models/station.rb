class Station
  include DataMapper::Resource
  property :id, Serial
  property :stationName, String
  property :availableDocks, Integer
  property :totalDocks, Integer
  property :latitude, Float
  property :longitude, Float
  property :statusValue, String
  property :statusKey, Integer
  property :availableBikes, Integer
  property :stAddress1, String
  property :stAddress2, String
  property :city, String
  property :postalCode, String
  property :location, String
  property :altitude, String
  property :testStation, Boolean
  property :lastCommunicationTime, DateTime
  property :landMark, String
  property :stationId, Integer
end
      # json = File.open("/Users/nyap/Dropbox/Flatiron School/Day_20/citibike-sinatra/data/citibike_data.json")
      # @data = MultiJson.load(json)

      # @data["stationBeanList"].each do |station|
        # s = Station.new
        # s.id = station["id"]
        # s.stationName = station["stationName"]
        # s.availableDocks = station["availableDocks"]
        # s.totalDocks = station["totalDocks"]
        # s.latitude = station["latitude"]
        # s.longitude = station["longitude"]
        # s.statusValue = station["statusValue"]
        # s.statusKey = station["statusKey"]
        # s.availableBikes = station["availableBikes"]
        # s.stAddress1 = station["stAddress1"]
        # s.stAddress2 = station["stAddress2"]
        # s.city = station["city"]
        # s.postalCode = station["postalCode"]
        # s.location = station["location"]
        # s.altitude = station["altitude"]
        # s.testStation = station["testStation"]
        # s.lastCommunicationTime = station["lastCommunicationTime"]
        # s.landMark = station["landMark"]
        # s.save
