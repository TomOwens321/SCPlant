json.array!(@production_steps) do |production_step|
  json.extract! production_step, :id, :production_card_id, :step_date, :process, :description, :notes
  json.url production_step_url(production_step, format: :json)
end
