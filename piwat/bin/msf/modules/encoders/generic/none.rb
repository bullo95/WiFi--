##
# $Id: none.rb 14774 2012-02-21 01:42:17Z rapid7 $
##

##
# This file is part of the Metasploit Framework and may be subject to
# redistribution and commercial restrictions. Please see the Metasploit
# web site for more information on licensing and terms of use.
#   http://metasploit.com/
##


require 'msf/core'


class Metasploit3 < Msf::Encoder

	def initialize
		super(
			'Name'             => 'The "none" Encoder',
			'Version'          => '$Revision: 14774 $',
			'Description'      => %q{
				This "encoder" does not transform the payload in any way.
			},
			'Author'           => 'spoonm',
			'License'          => MSF_LICENSE,
			'Arch'             => ARCH_ALL,
			'EncoderType'      => Msf::Encoder::Type::Raw)
	end

	#
	# Simply return the buf straight back.
	#
	def encode_block(state, buf)
		buf
	end

end
