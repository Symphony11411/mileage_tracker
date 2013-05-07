require 'spec_helper'

describe MakesController do

  describe "Go to index page" do
    it "returns http success" do
      visit makes_path
      response.should be_success
    end
  end

  describe "Go to new page" do
    let!(:make) {Make.create!  :name => 'Ford'}
    it "returns http success" do
        visit new_make_path(make)
      response.should be_success
    end
  end

  describe "Go to edit page" do
    let!(:make) {Make.create!  :name => 'Ford'}
    it "returns http success" do
        visit edit_make_path(1)
      response.should be_success
    end
  end

end
