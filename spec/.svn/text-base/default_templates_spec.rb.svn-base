require File.dirname(__FILE__) + '/spec_helper'

describe "ActionController::DefaultTemplates, when the normal template exists" do
  before do
    @controller = ActionController::Base.new
    @controller.stubs(:default_template_name_without_default_templates).with("action").returns("controller/action")
    @controller.stubs(:template_exists?).with("controller/action").returns("a string")
  end
  
  it "should return the normal template name when asked for the default template name" do
    @controller.send(:default_template_name, "action").should == "controller/action"
  end
end

describe "ActionController::DefaultTemplates, when the normal template doesn't exists and a defaults template exists" do
  before do
    @controller = ActionController::Base.new
    @controller.stubs(:default_template_name_without_default_templates).with("action").returns("controller/action")
    @controller.stubs(:template_exists?).with("controller/action").returns(nil)
    @controller.stubs(:template_exists?).with("defaults/action").returns("a string")
  end
  
  it "should return the defaults template name when asked for the default template name" do
    @controller.send(:default_template_name, "action").should == "defaults/action"
  end
end

describe "ActionController::DefaultTemplates, when the normal template doesn't exists and the defaults template doesn't exist" do
  before do
    @controller = ActionController::Base.new
    @controller.stubs(:default_template_name_without_default_templates).with("action").returns("controller/action")
    @controller.stubs(:template_exists?).with("controller/action").returns(nil)
    @controller.stubs(:template_exists?).with("defaults/action").returns(nil)
  end
  
  it "should return the normal template name when asked for the default template name" do
    @controller.send(:default_template_name, "action").should == "controller/action"
  end
end
