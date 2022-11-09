class Mission < ApplicationRecord
    belongs_to :scientist
    belongs_to :planet

    validates :name, presence: true
    validates :scientist, uniqueness: {scope: :name}
                    #OR
    #cannot join same mission twice:
    #validates :scientist, uniqueness: true

    #must have a name, a scientist and a planet:
    #validates :name, presence: true
    #validates :scientist, presence: true
    #validates :planet, presence: true
    

end
