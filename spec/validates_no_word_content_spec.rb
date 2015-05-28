require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "ValidatesNoWordContent" do
  it "fails with invalid content" do
    dummy = DummyModel.new
    dummy.content = '<w:WordDocument>'
    dummy.valid?.should eq false
  end

  it "is valid with valid content" do
    dummy = DummyModel.new
    dummy.content = 'Hello world'
    dummy.valid?.should eq true
  end
end
