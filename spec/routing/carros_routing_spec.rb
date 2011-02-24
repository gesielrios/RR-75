require "spec_helper"

describe CarrosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/carros" }.should route_to(:controller => "carros", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/carros/new" }.should route_to(:controller => "carros", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/carros/1" }.should route_to(:controller => "carros", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/carros/1/edit" }.should route_to(:controller => "carros", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/carros" }.should route_to(:controller => "carros", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/carros/1" }.should route_to(:controller => "carros", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/carros/1" }.should route_to(:controller => "carros", :action => "destroy", :id => "1")
    end

  end
end
