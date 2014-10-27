class Thought < ActiveRecord::Base


  belongs_to :user
  validates :deep_thought, presence: true, length: {maximum: 140, minimum: 2}


end
