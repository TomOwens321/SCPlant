require 'rails_helper'

RSpec.describe "seeds/show", :type => :view do
  before(:each) do
    @seed = assign(:seed, Seed.create!(
      :lot => "Lot",
      :plant => nil,
      :vendor => nil,
      :location => nil,
      :collected_by => "Collected By",
      :clean => false,
      :quantity => 1,
      :remaining => 2,
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Lot/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Collected By/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
