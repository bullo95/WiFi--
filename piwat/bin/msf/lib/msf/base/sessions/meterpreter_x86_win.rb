# -*- coding: binary -*-
##
# $Id: meterpreter_x86_win.rb 15548 2012-06-29 06:08:20Z rapid7 $
##

require 'msf/base/sessions/meterpreter'
require 'msf/windows_error'

module Msf
module Sessions

###
#
# This class creates a platform-specific meterpreter session type
#
###
class Meterpreter_x86_Win < Msf::Sessions::Meterpreter
	def initialize(rstream,opts={})
		super
		self.platform      = 'x86/win32'
		self.binary_suffix = 'dll'
	end

	def lookup_error(code)
		Msf::WindowsError.description(code)
	end
end

end
end
