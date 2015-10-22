profile "docked" do
  device "DP1-1", :mode => "1920x1080", :rate => "60.00"
  device "DP1-2", :mode => "1920x1080", :rate => "60.00", :right_of => "DP1-1"
end

profile "projector" do
  device "eDP1", :mode => "1920x1080"
  device "DP1", :right_of => "eDP1"
end

profile "default" do
  device "eDP1", :mode => "1920x1080"
end
