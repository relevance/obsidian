require File.join(File.dirname(__FILE__), "../..", "test_helper.rb")
require 'obsidian/extensions/object'

describe "object extensions" do
  it "should get metaclass" do
    obj = Object.new
    metaklass = (class << obj; self; end;)
    obj.metaclass.should == metaklass
  end
  
  it "should be able to add methods to the meta class" do
    obj = Object.new
    obj.meta_def(:speak) { "bark!" }
    obj.should.respond_to :speak

    another_obj = Object.new
    another_obj.should.not.respond_to :speak
  end
  
  class Foo; end
  
  it "should be able to define instance methods from the class" do
    Foo.class_def(:hi) { "hello!" }
    Foo.new.hi.should == "hello!"
    Foo.should.not.respond_to :hi
  end
  
  
end