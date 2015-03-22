#!/usr/bin/env ruby
#
# $Id: dump_module_info.rb 9766 2010-07-10 16:10:38Z jduck $
#
# This sample demonstrates how a module's information can be easily serialized
# to a readable format.
#
# $Revision: 9766 $
#

$:.unshift(File.join(File.dirname(__FILE__), '..', '..', '..', 'lib'))

require 'msf/base'

if (ARGV.empty?)
	puts "Usage: #{File.basename(__FILE__)} module_name"
	exit
end

modname = ARGV.shift
framework = Msf::Simple::Framework.create

begin
	# Create the module instance.
	mod = framework.modules.create(modname)
	if not mod
		puts "Error: The specified Msf::Module, \"#{modname}\", was not found."
	else
		# Dump the module's information in readable text format.
		puts Msf::Serializer::ReadableText.dump_module(mod)
	end
rescue
	puts "Error: #{$!}\n\n#{$@.join("\n")}"
end
