#!/usr/bin/env ruby
#
# $Id: exe2vbs.rb 15108 2012-04-16 05:01:41Z rapid7 $
#
# This script converts an EXE to a vbs script
#
# $Revision: 15108 $
#

msfbase = __FILE__
while File.symlink?(msfbase)
	msfbase = File.expand_path(File.readlink(msfbase), File.dirname(msfbase))
end

$:.unshift(File.expand_path(File.join(File.dirname(msfbase), '..', 'lib')))
require 'fastlib'
require 'msfenv'

$:.unshift(ENV['MSF_LOCAL_LIB']) if ENV['MSF_LOCAL_LIB']

require 'rex'
require 'msf/base'

def usage
	$stderr.puts("    Usage: #{$0} [exe] [vbs]\n")
	exit
end

exe = ARGV.shift
vbs = ARGV.shift

if (not (exe and vbs))
	usage
end

out = File.new(vbs, "w")
inp = File.open(exe, "rb")

dat = ""
while(buf = inp.read(8192))
	dat << buf
end

out.write(Msf::Util::EXE.to_exe_vbs(dat))
out.close
inp.close

$stderr.puts "[*] Converted #{dat.length} bytes of EXE into a vbs script"
