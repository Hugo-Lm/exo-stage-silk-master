class Company < ApplicationRecord
  has_many :founders

  private

  def self.company_with_s_founder(array)
    s_founders = []
    array.each do |item|
      if item.founders.exists? && item.founders[0].name[0].downcase == "s"
        s_founders << item
      end
    end
    return s_founders
  end

end
