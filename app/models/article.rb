class Article < ApplicationRecord
    has_many :comments
    
    validates :title, presence: true
    # first validation declares that a title value must be present - bc it's a string, the title value must contain at least one non-whitespace character.
    validates :body, presence: true, length: { minimum: 10 }
    # second validation declares that a body value must also be present and value must be at least 10 characters long.
end
