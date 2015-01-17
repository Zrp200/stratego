module Stratego
  class Flag < Piece
    def move_distance
      0
    end
    def initialize(color)
      super "flag", color
    end
  end
end
    
      
