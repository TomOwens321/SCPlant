module PlantsHelper

  def plant_family_path(plant)
    plant.family.nil? ? "#" : family_path(plant.family)
  end
  
end
