require 'pg'
require 'sequel'

module GameDB
  class SequelCon

    DB = Sequel.connect(:adapter=>'postgres', :host=>'localhost', :database=>'ttt_db_anda')

    def self.all_games
      DB[:games]
    end

    def self.add_game(board, markers)
      SequelCon.all_games.insert(:board => board, :markers => markers)
    end

  end
end


