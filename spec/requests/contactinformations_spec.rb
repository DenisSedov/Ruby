require 'spec_helper'

describe "Contactinformations" do
  describe "GET /contactinformations" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get contactinformations_path
      response.status.should be(200)
    end
  end
end
