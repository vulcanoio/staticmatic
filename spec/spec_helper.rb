require 'rubygems'
require 'stringio'
require 'spec'

require 'lib/staticmatic'

unless defined? TEST_SITE_PATH
  TEST_SITE_PATH = File.expand_path(File.join(File.dirname(__FILE__), "sandbox", "test_site"))
end

Spec::Runner.configure do |config|
end

def setup_staticmatic
  @staticmatic = StaticMatic::Base.new(TEST_SITE_PATH)
end
