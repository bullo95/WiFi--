#!/usr/bin/env ruby
# -*- coding: binary -*-

# $Id: exceptions.rb 15548 2012-06-29 06:08:20Z rapid7 $

module Rex
module PeParsey

class PeError < ::RuntimeError
end

class ParseError < PeError
end

class DosHeaderError < ParseError
end

class FileHeaderError < ParseError
end

class OptionalHeaderError < ParseError
end

class BoundsError < PeError
end

class WtfError < PeError
end

class SkipError < PeError
end

end end
