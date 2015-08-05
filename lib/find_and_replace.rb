class String
  define_method(:find_and_replace) do |old_word, new_word|
    self.gsub!(old_word, new_word)
  end
end
