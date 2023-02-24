#!/usr/bin/env ruby

# file: martile-plugin-rbbrs24.rb

require 'rbbrs24'


class MartilePluginRbbrs24
      

  def initialize(settings: {})

    @action = settings[:action] || 'run'

  end
  
  def apply(s)
    
    a = s.split(/(?=<rbbr>)/)

    a.map do |x|

      if x =~ /<rbbr>/ then
        
        iend = x =~ /<\/rbbr>/
        code, remaining = x[6..iend-1], x[iend+7..-1]
        Rbbrs24.new(code: code).render_input  + remaining
        
      else
        x
      end
      
    end.join
    
  end
      
end

