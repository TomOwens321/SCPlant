module FamiliesHelper

  def family_autocomplete
    autocomplete_field( :family, :name, autocomplete_family_name_families_path )
  end
  
end
