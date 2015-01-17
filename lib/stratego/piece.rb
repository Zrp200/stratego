module Stratego
  class Piece
    attr_reader :rank, :color
    def initialize(rank, color, x, y)
      raise ArgumentError unless color.downcase!.include? ?r | ?b
      @rank, @color, board[x][y], @position = rank, color, self, y: y, x: x
    end
    def move_distance
      1
    end
    def move(direction)
      destroy
      @position = case direction.first
        when "n" then y: @position[:y] + 1, x: @position[:x]
      end
    end
        
      
      
    def battle(direction)
      
      case rank <=> piece.rank
        when 1
          piece.destroy
          move direction
        when 0
          
          
      end
    end
    def destroy
      board[  @position[:y] ].delete_at @position[:x]
    end
  end
end
