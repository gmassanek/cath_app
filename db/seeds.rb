# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.find_or_create_by_email("test@test.com", :password=> "password", :password_confirmation=>"password")
Gallery.find_or_create_by_title("oils", :description=> "This is gallery 1")
g2 = Gallery.find_or_create_by_title("acrylics", :description=> "This is gallery 2")
p = Factory(:piece, :gallery => g2)

