require 'pry'
class Solution < ActiveRecord::Base
  belongs_to :mad_lib
  attr_accessible :label, :value, :mad_lib_id
  validates :label, :value, presence: true

  def fill_field(label, value)
    Solution.create(:mad_lib_id => self.mad_lib_id, 
                    :label => label, 
                    :value => value)
  end

  def resolve
    current_mad_lib = MadLib.find(self.mad_lib_id)
    text = current_mad_lib.text
    solutions = current_mad_lib.solutions
    solutions_hash = solutions.each_with_object({}) do |solution, hash|
      hash[solution.label.downcase] = solution.value.split.last
    end
  end

end
