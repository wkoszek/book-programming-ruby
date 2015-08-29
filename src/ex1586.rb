# Sample code from Programing Ruby, page 737
require 'yaml'

config = YAML.load(File.open("code/config.yaml"))
config["username"]
config["prefs"]["timeout"] * 10
