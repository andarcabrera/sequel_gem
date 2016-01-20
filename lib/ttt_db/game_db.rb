require 'sequel'

module GameDB
  class SequelCon

    DB = Sequel.connect(:adapter=>'postgres', :host=>'localhost', :database=>'ttt_anda_db')

    def self.all_games
      DB[:games].all
    end

    def self.add_game(info)
      SequelCon.all_games.insert(:board => info)
    end

  end
end


