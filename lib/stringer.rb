# frozen_string_literal: true

require_relative "stringer/version"

module Stringer
  class Error < StandardError; end
  # Your code goes here...
  def self.spacify *strings
  	string=""
	strings.each_with_index do |s,index|
		if index == s.size - 1
		   string += s 
		else
		   string += s + " "
		end
	end
	string
  end
  def self.minify string, max
  	if string.length > max
            return string[0..max] + ".."
	else 
	    return string
	end
  end
  def self.replacify string, old_string, new_string
	#string[old_string] = new_string 
         duplicate_string = string.dup
       #  duplicate_string[old_string] = new_string
	 duplicate_string.sub! old_string, new_string
	 duplicate_string
  end
  def self.tokenize string
      string.split(" ")
  end

  def self.removify string,remove_string
	duplicate_string = string.dup
  	#duplicate_string.sub! remove_string, ""
	#duplicate_string.tr(remove_string,"")
	string_array = duplicate_string.split(" ")
	string_array.delete(remove_string)
        string_array.join(" ")
  end
end
