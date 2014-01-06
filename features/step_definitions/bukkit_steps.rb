Before do
  @aruba_timeout_seconds = 85
end

Then(/^the exit code should be (\d+)$/) do |exit_status|
  @last_exit_status.should == exit_status.to_i
end

Then(/^the file "(.*?)" should exist$/) do |file|
  File.exists?(file)
end

Given(/^a simulated server "(.*?)"$/) do |name|
  Dir.mkdir("tmp") unless Dir.exists? "tmp"
  Dir.chdir("tmp")
  Dir.mkdir("MC") unless Dir.exists? "MC"
  Dir.chdir("MC")
  Dir.mkdir("plugins") unless Dir.exists? "plugins"

  file = File.new("craftbukkit.jar", "w")
  file.write("This is just a simulated jarfile.")
  file.close
end

Then(/^the plugin "(.*?)" should not exist$/) do |name|
  File.exists?("plugins/#{name}") == false
end
