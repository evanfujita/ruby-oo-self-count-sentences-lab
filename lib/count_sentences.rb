require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0
    count += self.split.select {|sentence| sentence.include?("?") }.count
    count += self.split.select {|sentence| sentence.include?("!") }.count
    count += self.split.select {|sentence| sentence.include?(".") }.count
    count
  end
end


