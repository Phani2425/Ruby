# way-1
# require_relative 'test_module'

# way-2
# require './test_module'

# printing the global variable which stores the parent directory of all modules
# puts $LOAD_PATH

# way-3
=begin
$LOAD_PATH << '.'
require 'test_module'
=end

puts ModuleTest::Message

puts ModuleTest.square(5)

# variables of modules are accesed by:- '::' and methods are accessed by '.' and also defined by using '.' in modules