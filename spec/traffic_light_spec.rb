require "traffic_light"

describe "Can change light colors" do
  before(:all) do
    @traffic = TrafficLight.new
  end

  it "Set off" do
    @traffic.clear
    @traffic.message.should == "0 -> ---"
  end

  it "Set green" do
    @traffic.green
    @traffic.message.should == "1 -> G--"
  end

  it "Set orange" do
    @traffic.orange
    @traffic.message.should == "2 -> -O-"
  end

  it "Set red" do
    @traffic.red
    @traffic.message.should == "4 -> --R"
  end

  it "Set green & orange" do
    @traffic.green_orange
    @traffic.message.should == "3 -> GO-"
  end

  it "Set green & red" do
    @traffic.green_red
    @traffic.message.should == "5 -> G-R"
  end

  it "Set orange & red" do
    @traffic.orange_red
    @traffic.message.should == "6 -> -OR"
  end

  it "Set all light" do
    @traffic.all
    @traffic.message.should == "7 -> GOR"
  end

  it "Close socket" do
    @traffic.open? == true
    @traffic.close!
    @traffic.open? == false
  end
end