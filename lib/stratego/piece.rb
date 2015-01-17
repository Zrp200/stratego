module Stratego
  class Piece
    attr_reader :rank
    def initialize(rank)
      @rank = rank
    end
    def move_distance
      1
    end
    def win_battle?(piece)
      if rank > piece.rank
        true
      else
        false
      end
    end
  end
end
