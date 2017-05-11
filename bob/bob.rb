class Bob
  def self.hey(text)
    if text.strip.empty?
      "Fine. Be that way!"
    elsif text == text.upcase && text.match(/[A-Za-z]+/)
      "Whoa, chill out!"
    elsif text.end_with?("?")
      "Sure."
    else
      "Whatever."
    end
  end
end
