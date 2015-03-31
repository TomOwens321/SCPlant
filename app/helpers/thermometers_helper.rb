require 'lib/ghctl/thermometer'
require 'lib/ghctl/owfuncs'

module ThermometersHelper

  def temperature
    client = Onewire.client 'towens.com'
    therms = OwFuncs::find_thermometers 'towens.com'
    therm = Thermometer.new client, therms[0]
    therm.scale = :fahrenheit
    therm.temperature
  end

end