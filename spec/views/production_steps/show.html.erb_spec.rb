require 'rails_helper'

RSpec.describe "production_steps/show", :type => :view do
  before(:each) do
    @production_step = assign(:production_step, ProductionStep.create!(
      :production_card => nil,
      :process => "Process",
      :description => "Description",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Process/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/MyText/)
  end
end
