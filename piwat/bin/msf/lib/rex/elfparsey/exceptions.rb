#!/usr/bin/env ruby
# -*- coding: binary -*-

# $Id: exceptions.rb 15548 2012-06-29 06:08:20Z rapid7 $

module Rex
module ElfParsey

class ElfError < ::RuntimeError
end

class ParseError < ElfError
end

class ElfHeaderError < ParseError
end

class ProgramHeaderError < ParseError
end

class BoundsError < ElfError
end

class WtfError < ElfError
end

end
end
