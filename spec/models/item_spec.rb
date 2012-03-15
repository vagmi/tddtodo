require './spec/support'
describe Models::Item do
  subject { Models::Item.new }
  it "should have content" do
    subject.respond_to?(:content).should be_true
  end
  it "should have status" do
    subject.respond_to?(:status).should be_true
  end
  describe "#display" do
    before do
      @item = Models::Item.new
      @item.content = "My Content"
    end
    context "if status is true " do
      before do
        @item.status = true
      end
      it "should display with the done tag" do
        @item.display.should == "#{@item.content} #done"
      end
    end
    context "if status is false" do
      before do
        @item.status = false
      end
      it "should display without the done tag" do
        @item.display.should == @item.content
      end
    end
  end
end
