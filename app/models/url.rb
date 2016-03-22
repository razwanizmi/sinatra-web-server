class Url < ActiveRecord::Base
  validates_format_of :long_url, :with => /(https?:\/\/)/, :on => :create, message: "is not typed in proper format"
  before_save :shorten!

  def shorten! 
    self.short_url = [*"0".."9", *"A".."Z", *"a".."z"].sample(5).join("")
  end

  def add_click!
    self.click_count += 1
    self.save
  end
end