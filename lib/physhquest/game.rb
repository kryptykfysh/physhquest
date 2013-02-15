require 'logger'

module Physhquest
  class Game
    def start
    	log_file = File.open(File.expand_path("physhquest.log", "../log"), 'a+')
    	syslog = Logger.new(log_file, 10, 1024000)
      syslog.info('Logging started.')
    end
  end
end