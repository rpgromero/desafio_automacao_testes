# Hook method that reads the yaml file before the execution of the feature steps
Before do |feature|
    CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/config.yaml")
  end

  