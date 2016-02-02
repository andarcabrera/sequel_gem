require 'pg'
require 'sequel'

module GameDB
  class SequelConnection

    attr_reader :db_name

    def initialize(db_name)
      @db_name = db_name
    end

    def all_games
      db[:games]
    end

    def save_game(board, markers)
      db[:games].insert(:board => board, :markers => markers)
    end

    def disconnect
      db.disconnect
    end

    private


    def db
      @db ||= Sequel.connect(:adapter=>'postgres', :host=>'localhost', :database=> @db_name)
    end

  end
end


