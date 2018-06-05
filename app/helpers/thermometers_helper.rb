require 'lib/ghctl/thermometer'
require 'lib/ghctl/owfuncs'

module ThermometersHelper

  OWHOST = 'greenhousepi'

  def temperature(sensor = 0)
    client = Onewire.client OWHOST
    therms = OwFuncs::find_thermometers OWHOST
    therm = Thermometer.new client, therms[sensor]
    therm.scale = :fahrenheit
    therm.temperature
  end

end