#!/usr/bin/env ruby
 require 'pp'
 require 'debugger'
 require 'slop'
 require 'dexhack'
 
 opts = Slop.parse(autocreate: true) do
     on "-v", "put the version" do
         puts "version 1.0"
     end
 end
 puts opts.to_hash

 DexHack.new(opts).hack

