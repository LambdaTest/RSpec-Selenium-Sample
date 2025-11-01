require 'yaml'
require 'rspec'
require 'selenium-webdriver'

TASK_ID = (ENV['TASK_ID'] || 0).to_i
CONFIG_NAME = ENV['CONFIG_NAME'] || 'single'

CONFIG = YAML.load(File.read(File.join(File.dirname(__FILE__), "../config/#{CONFIG_NAME}.config.yml")))
CONFIG['user'] = ENV['LT_USERNAME'] || CONFIG['user']
CONFIG['key'] = ENV['LT_ACCESS_KEY'] || CONFIG['key']

RSpec.configure do |config|
  config.around(:example) do |example|
    caps = CONFIG['common_caps'].merge(CONFIG['browser_caps'][TASK_ID])

    # Create LT options (everything except 'browserName')
    lt_options = caps.reject { |k, _| k == 'browserName' }

    # Name of the test (RSpec example name)
    lt_options["name"] = ENV['name'] || example.metadata[:description]

    # Pick the correct browser options
    browser_name = caps['browserName'].downcase
    options =
      case browser_name
      when 'chrome'
        Selenium::WebDriver::Options.chrome
      when 'firefox'
        Selenium::WebDriver::Options.firefox
      when 'safari'
        Selenium::WebDriver::Options.safari
      when 'edge'
        Selenium::WebDriver::Options.edge
      else
        raise ArgumentError, "Unsupported browser: #{browser_name}"
      end

    # Attach LambdaTest-specific capabilities
    options.add_option('LT:Options', lt_options)

    # Initialize driver (Selenium 4+ way)
    @driver = Selenium::WebDriver.for(
      :remote,
      url: "https://#{CONFIG['user']}:#{CONFIG['key']}@#{CONFIG['server']}/wd/hub",
      options: options
    )

    begin
      example.run
    ensure
      @driver.quit
    end
  end
end
