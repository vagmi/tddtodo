require './spec/support'
describe Models::Item do
  subject { Models::Item.new }
  it "should have content" do
    subject.respond_to?(:content).should be_true
  end
  it "should have status" do
    subject.respond_to?(:status).should be_true
  end
end
