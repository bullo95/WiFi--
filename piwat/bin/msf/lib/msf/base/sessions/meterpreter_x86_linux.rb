# -*- coding: binary -*-
##
# $Id: meterpreter_x86_linux.rb 15548 2012-06-29 06:08:20Z rapid7 $
##

require 'msf/base/sessions/meterpreter'

module Msf
module Sessions

###
#
# This class creates a platform-specific meterpreter session type
#
###
class Meterpreter_x86_Linux < Msf::Sessions::Meterpreter
	def initialize(rstream, opts={})
		super
		self.platform      = 'x86/linux'
		self.binary_suffix = 'lso'
	end
end

end
end

