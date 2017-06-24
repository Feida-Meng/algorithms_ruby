# is_palindrome? checks if the string is palindrome.
# String is a palindrome if string is empty or contains single letter
# Also if string is the same as the reverse of a string e.g. Hannah
def is_palindrome?(s)
  if s.length <= 1
    return true
  else
    return s.slice!(0).downcase != s.slice!(-1).downcase ? false : true
  end
  is_palindrome?(s)
end
