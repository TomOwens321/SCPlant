require 'rails_helper'

RSpec.describe "vendors/new", :type => :view do
  before(:each) do
    assign(:vendor, Vendor.new(
      :name => "MyString",
      :contact => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :website => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders new vendor form" do
    render

    assert_select "form[action=?][method=?]", vendors_path, "post" do

      assert_select "input#vendor_name[name=?]", "vendor[name]"

      assert_select "input#vendor_contact[name=?]", "vendor[contact]"

      assert_select "input#vendor_address1[name=?]", "vendor[address1]"

      assert_select "input#vendor_address2[name=?]", "vendor[address2]"

      assert_select "input#vendor_city[name=?]", "vendor[city]"

      assert_select "input#vendor_state[name=?]", "vendor[state]"

      assert_select "input#vendor_zipcode[name=?]", "vendor[zipcode]"

      assert_select "input#vendor_phone[name=?]", "vendor[phone]"

      assert_select "input#vendor_email[name=?]", "vendor[email]"

      assert_select "input#vendor_website[name=?]", "vendor[website]"

      assert_select "textarea#vendor_notes[name=?]", "vendor[notes]"
    end
  end
end
