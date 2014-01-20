# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create :email => 'test@test.com', :password => 'password'

#論文、学群作成
Faculty.create :name => 'システム工学群'
Faculty.create :name => '環境学群'
Faculty.create :name => '情報学群'
Faculty.create :name => 'マネジメント学群'