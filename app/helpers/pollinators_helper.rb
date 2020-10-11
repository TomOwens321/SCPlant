module PollinatorsHelper

  def pollinator_family_path(pollinator)
    pollinator.family.nil? ? "#" : family_path(pollinator.family)
  end
  
end
