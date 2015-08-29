# Sample code from Programing Ruby, page 737
require 'yaml'
tree = { :name => 'ruby',
         :uses => [ 'scripting', 'web', 'testing', 'etc' ]
       }

File.open("tree.yaml", "w") {|f| YAML.dump(tree, f)}
