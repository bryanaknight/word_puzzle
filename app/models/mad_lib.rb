class MadLib < ActiveRecord::Base
  attr_accessible :text
  has_many :solutions

  def has_field?(field_name)
    #TODO change [0..-6] to regex
    return true if self.text.include? field_name[0..-6].downcase!
    false
  end


end
