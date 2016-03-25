class Slide < ActiveRecord::Base
    has_and_belongs_to_many :quiz_scores
end
