##
# $Id: bundleinject.rb 14774 2012-02-21 01:42:17Z rapid7 $
##

##
# This file is part of the Metasploit Framework and may be subject to
# redistribution and commercial restrictions. Please see the Metasploit
# web site for more information on licensing and terms of use.
#   http://metasploit.com/
##

require 'msf/core'
require 'msf/core/payload/osx/bundleinject'

###
#
# Injects an arbitrary DLL in the exploited process.
#
###
module Metasploit3

	# $Revision: 14774 $
	include Msf::Payload::Osx::BundleInject

end
