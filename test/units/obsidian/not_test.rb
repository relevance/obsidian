require File.join(File.dirname(__FILE__), "../..", "test_helper.rb")
require 'obsidian/extensions/not'

describe "not object extension" do
  it "negates true to false" do
    (nil.not.nil?).should == false
  end
  
  it "negates false to true" do
    (Object.new.not.nil?).should == true
  end
end