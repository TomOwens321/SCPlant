class Importer

  def initialize( csv )
    @csv = csv
  end

  def do_import
    file = File.open @csv
    file.each_line do |line|
      cols = line.split("|")
      add_seed( cols )
    end
  end

  def add_common_name
    file = File.open @csv
    file.each_line do |line|
      cols = line.split(",")
      name = cols[1] + " " + cols[3]
      unless cols[4].empty?
        name += " var.#{cols[4]}"
      end
      plant =  Plant.where(name: name).first
      plant.common_name = cols[5]
      plant.save
    end
  end

  def add_germ_code
    file = File.open @csv
    file.each_line do |line|
      cols = line.split("|")
      name = cols[0].rstrip
      plant = Plant.where(name: name).first_or_create
      plant.germination_code = cols[1].rstrip
      plant.save
    end
  end

  def add_seed( cols )
    seed = Seed.create
    seed.plant = add_plant( cols )
    seed.vendor = add_vendor( cols )
    seed.location = add_location( cols )
    begin
      seed.collection_date = Date.parse cols[6]
    rescue 
      seed.collection_date = nil
      puts "Skipping bad date"
    end
    seed.collected_by = seed.vendor.nil? ? cols[16] : cols[9]
    seed.clean = cols[20] == "y" ? true : false
    seed.quantity = cols[21]
    seed.remaining = seed.quantity
    seed.save
  end

  def add_location( cols )
    return if cols[10].empty?
    location = Location.where(name: cols[10]).first_or_create
    location.city = cols[12]
    location.county = cols[13]
    location.state = cols[14]
    location.altitude = cols[15]
    location.save
    location
  end

  def add_vendor( cols )
    return if cols[8].empty?
    vendor = Vendor.where(name: cols[8]).first_or_create!
  end

  def add_plant( cols )
    name = cols[1] + " " + cols[3]
    unless cols[4].empty?
      name += " var.#{cols[4]}"
    end
    plant =  Plant.where(name: name).first_or_create
    plant.family = add_family( cols )
    plant.save
    plant
  end

  def add_family( cols )
    rslt = Family.where(name: cols[0]).first_or_create! unless cols[0].empty?
  end
end