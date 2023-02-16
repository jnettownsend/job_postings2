class Job < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, length: {minimum: 2, maximum: 75}
    validates :company, presence: true, length: {minimum: 2, maximum: 75}

    def self.search(query)
        where('lower(title) LIKE :query OR lower(company) LIKE :query', query: "%#{query.downcase}%")
    end

end
