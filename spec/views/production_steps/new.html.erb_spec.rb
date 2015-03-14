require 'rails_helper'

RSpec.describe "production_steps/new", :type => :view do
  before(:each) do
    assign(:production_step, ProductionStep.new(
      :production_card => nil,
      :process => "MyString",
      :description => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders new production_step form" do
    render

    assert_select "form[action=?][method=?]", production_steps_path, "post" do

      assert_select "input#production_step_production_card_id[name=?]", "production_step[production_card_id]"

      assert_select "input#production_step_process[name=?]", "production_step[process]"

      assert_select "input#production_step_description[name=?]", "production_step[description]"

      assert_select "textarea#production_step_notes[name=?]", "production_step[notes]"
    end
  end
end
