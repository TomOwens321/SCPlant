require 'rails_helper'

RSpec.describe "production_steps/index", :type => :view do
  before(:each) do
    assign(:production_steps, [
      ProductionStep.create!(
        :production_card => nil,
        :process => "Process",
        :description => "Description",
        :notes => "MyText"
      ),
      ProductionStep.create!(
        :production_card => nil,
        :process => "Process",
        :description => "Description",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of production_steps" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Process".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
