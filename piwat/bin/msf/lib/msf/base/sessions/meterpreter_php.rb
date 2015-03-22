# -*- coding: binary -*-
##
# $Id: meterpreter_php.rb 15548 2012-06-29 06:08:20Z rapid7 $
##

require 'msf/base/sessions/meterpreter'

module Msf
module Sessions

###
#
# This class creates a platform-specific meterpreter session type
#
###
class Meterpreter_Php_Php < Msf::Sessions::Meterpreter
	def supports_ssl?
		false
	end
	def supports_zlib?
		false
	end
	def initialize(rstream, opts={})
		super
		self.platform      = 'php/php'
		self.binary_suffix = 'php'
	end
end

end
end

