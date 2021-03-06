Given /^the application is not running$/ do
  
end

When /^I start the application$/ do
  current_game = Physhquest::Game.new.start
end

Then /^a log file should be created$/ do
	log_file = File.open("log/physhquest.log", 'a+')
  LOG = Logger.new(log_file, 10, 1024000)
end

Then /^the log file should capture data$/ do
  LOG.info('Logging started.')
end