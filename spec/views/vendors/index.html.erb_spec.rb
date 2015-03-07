require 'rails_helper'

RSpec.describe "vendors/index", :type => :view do
  before(:each) do
    assign(:vendors, [
      Vendor.create!(
        :name => "Name",
        :contact => "Contact",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :phone => "Phone",
        :email => "Email",
        :website => "Website",
        :notes => "MyText"
      ),
      Vendor.create!(
        :name => "Name",
        :contact => "Contact",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :phone => "Phone",
        :email => "Email",
        :website => "Website",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of vendors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
