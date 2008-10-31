require File.join(File.dirname(__FILE__), "../..", "test_helper.rb")
require 'obsidian/extensions/try'

describe "try object extension" do

  it "is equivalent to @foo ? @foo.meth : nil" do
    ["my string", Array.new, nil].each do |val|
      @foo = val
      @foo.try(:length).should == (@foo ? @foo.length : nil)
    end
    
  end
end