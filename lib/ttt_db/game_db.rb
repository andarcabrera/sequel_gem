require 'sequel'

module GameDB
  class SequelCon

    def initialize
      DB = Sequel.connect(:adapter=>'postgres', :host=>'localhost', :database=>'ttt_anda_db')
    end

    def self.all_games
      DB[:games].all
    end

    def add_game(info)
      SequelCon.all_games.insert(:board => info)
    end

  end
end


