require 'lib/ghctl/thermometer'
require 'lib/ghctl/owfuncs'

module ThermometersHelper

  def temperature
    client = Onewire.client 'ghpi'
    therms = OwFuncs::find_thermometers 'ghpi'
    therm = Thermometer.new client, therms[0]
    therm.scale = :fahrenheit
    therm.temperature
  end

end