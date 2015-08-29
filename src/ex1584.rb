# Sample code from Programing Ruby, page 737
require 'yaml'
tree = YAML.load(File.open("tree.yaml"))
tree[:uses][1]
