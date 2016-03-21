class Url < ActiveRecord::Base

  before_save :shorten!

  def shorten! 
    self.short_url = [*"0".."9", *"A".."Z", *"a".."z"].sample(5).join("")
  end
end