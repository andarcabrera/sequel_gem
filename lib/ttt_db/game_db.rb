require 'pg'
require 'sequel'

module GameDB
  class SequelConnection

    DB = Sequel.connect(:adapter=>'postgres', :host=>'localhost', :database=>'ttt_db_anda')

    def self.all_games
      DB[:games]
    end

    def self.save_game(board, markers)
      SequelConnection.all_games.insert(:board => board, :markers => markers)
    end

  end
end


