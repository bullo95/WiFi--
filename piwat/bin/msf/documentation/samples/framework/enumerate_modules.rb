#!/usr/bin/env ruby
#
# $Id: enumerate_modules.rb 9212 2010-05-03 17:13:09Z jduck $
#
# This sample demonstrates enumerating all of the modules in the framework and
# displays their module type and reference name.
#
# $Revision: 9212 $
#

$:.unshift(File.join(File.dirname(__FILE__), '..', '..', '..', 'lib'))

require 'msf/base'

framework = Msf::Simple::Framework.create

# Enumerate each module in the framework.
framework.modules.each_module { |name, mod|
	puts "#{mod.type}: #{name}"
}
