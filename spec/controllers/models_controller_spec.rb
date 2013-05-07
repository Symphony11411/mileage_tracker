require 'spec_helper'

describe ModelsController do

  describe "Go to index page" do
    it "returns http success" do
        visit models_path
      response.should be_success
    end
  end

  describe "Go to new page" do
    let!(:model) {Model.create!  :name => 'Ford'}
    it "returns http success" do
        visit new_model_path(model)
      response.should be_success
    end
  end

  describe "Go to edit page" do
    let!(:model) {Model.create!  :name => 'Ford'}
    it "returns http success" do
        visit edit_model_path(model)
      response.should be_success
    end
  end

end
