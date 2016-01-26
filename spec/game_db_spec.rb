require_relative '../lib/ttt_db/game_db'
require_relative '../lib/ttt_db/game_db'
require_relative 'spec_helper'

describe "DB::SequelConnection" do

  before(:all) do
     system("createdb test_ttt")
     Sequel.connect(:adapter=>'postgres',
                    :host=>'localhost',
                    :database=>'test_ttt') {|db|

        db.create_table :games do
        primary_key :id
        String :board
        String :markers
        end
        }

  end

  after(:all) do
    system("dropdb test_ttt")
  end

  let(:test_db) { GameDB::SequelConnection.new("test_ttt") }

  describe "#save_game" do
    it "adds a game to the data base" do
      board1 = ["A", "A", "A", "B", 4, 5, 6, 7, "B"]
      markers1 = ["A", "B"]
      test_db.save_game(board1, markers1)

      board2 = ["X", "X", "X", "Y", 4, 5, 6, 7, "Y"]
      markers2 = ["X", "Y"]
      test_db.save_game(board2, markers2)


      expect(test_db.all_games.count).to eq(2)
      test_db.disconnect
    end
  end

  describe "#db_name" do
    it "returns the name of the data base" do

      expect(test_db.db_name).to eq('test_ttt')
      test_db.disconnect
    end
  end
end
