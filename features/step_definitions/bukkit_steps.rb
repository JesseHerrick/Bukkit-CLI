Before do
  @aruba_timeout_seconds = 85
end

When(/^I run "(.*?)" with the options "(.*?)"$/) do |command, options|
  @output = `#{command} #{options}`
end

Then(/^the exit code should be (\d+)$/) do |exit_status|
  @last_exit_status.should == exit_status.to_i
end

Then(/^the file "(.*?)" should exist$/) do |file|
  File.exists?(file)
end
