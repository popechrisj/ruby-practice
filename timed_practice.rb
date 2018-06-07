"""
A palindrome is a word that reads the same backward or forward.

Write a function that checks if a given word is a palindrome. Character case should be ignored.
for example, is_palindrome("Deleveled") should return true as character case should be ignored, 
resulting in "deleveled", which is a palindrome since it reads the same backward and forward.
"""
module Palindrome

  def self.is_palindrome(word)
    new_word = word.downcase
    length = new_word.size
    first_half = []
    second_half = []
    for i in 0..((length/2)-1)
      first_half << new_word[i]
      second_half << new_word[-i-1]
    end
    if first_half == second_half
      return true
    else
      return false
    end
      
  end
  
end

puts Palindrome.is_palindrome('Deleveled')

"""
Write a function that provides change directory (cd) function for an abstract file system.

Notes:
-Root path is '/'.
-Path separator is '/'.
-Parent directory is addressable as '..'.
-Directory names consist only of English alphabet letters (A-Z and a-z).
-The function should support both relative and absolute paths.
-The function will not be passed any invalid paths.
-Do not use built-in path-related functions.

For example:

path = Path.new('/a/b/c/d')
path.cd('../x')
puts path.current_path

should display '/a/b/c/x'.
"""
class Path
class Path

  def initialize(path)
    @current_path = path
  end

  def current_path
    @current_path
  end

  def cd(new_path)
	if new_path[0..2] == '../'
	  parent_directory = @current_path.reverse.partition('/').last.reverse 
      @current_path = parent_directory + '/' + new_path.reverse.partition('/').first
    elsif new_path[0..1] == '..'
      parent_directory = @current_path.reverse.partition('/').last.reverse 
      @current_path = parent_directory 
    elsif new_path[0] ==  '/'
	  @current_path = new_path 
	elsif new_path[0].between?("A", "z")
      parent_directory = @current_path
	  @current_path = parent_directory + '/' + new_path
	else 
	  puts "Error"
	end 
  end
  
end

path = Path.new('/a/b/c/d')
path.cd('../x')
puts path.current_path

path = Path.new('/a/b/c/d')
path.cd('../x')
puts path.current_path
