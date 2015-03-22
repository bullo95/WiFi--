##
# $Id: interact.rb 15721 2012-08-07 21:08:09Z rapid7 $
##

##
# This file is part of the Metasploit Framework and may be subject to
# redistribution and commercial restrictions. Please see the Metasploit
# web site for more information on licensing and terms of use.
#   http://metasploit.com/
##


require 'msf/core'
require 'msf/core/handler/find_tty'
require 'msf/base/sessions/command_shell'


module Metasploit3

	include Msf::Payload::Single

	def initialize(info = {})
		super(merge_info(info,
			'Name'          => 'Unix TTY, Interact with Established Connection',
			'Version'       => '$Revision: 15721 $',
			'Description'   => 'Interacts with a TTY on an established socket connection',
			'Author'        => 'hdm',
			'License'       => MSF_LICENSE,
			'Platform'      => 'unix',
			'Arch'          => ARCH_TTY,
			'Handler'       => Msf::Handler::FindTty,
			'Session'       => Msf::Sessions::TTY,
			'Payload'       =>
				{
					'Offsets' => { },
					'Payload' => ''
				}
			))
	end

end
