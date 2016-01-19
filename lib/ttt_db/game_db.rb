require 'sequel'

 DB = Sequel.connect(:adapter=>'postgres', :host=>'localhost', :database=>'test1')

# DB.create_table :games do
#   primary_key :id
#   String :board
# end

games = DB[:games]


