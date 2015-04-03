require 'lib/ghctl/thermometer'
require 'lib/ghctl/owfuncs'

module ThermometersHelper

  def temperature(sensor = 0)
    client = Onewire.client 'ghpi'
    therms = OwFuncs::find_thermometers 'ghpi'
    therm = Thermometer.new client, therms[sensor]
    therm.scale = :fahrenheit
    therm.temperature
  end

end