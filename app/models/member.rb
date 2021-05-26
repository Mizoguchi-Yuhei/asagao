class Member < ApplicationRecord
  class << self
    def search(query)
      rel = order("number")
      if query.present?
        rel = where("name LIKE ? OR full_name LIKE ?", "%#{query}%", "%#{query}%")
      end
      rel
    end
  end
end
