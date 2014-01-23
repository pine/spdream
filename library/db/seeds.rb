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
Faculty.create :name => '環境理工学群'
Faculty.create :name => '情報学群'
Faculty.create :name => 'マネジメント学部'

#研究室作成
Lab.create :name => '井上・芝田研究室', :faculty_id => 1
Lab.create :name => '竹田研究室', :faculty_id => 1
Lab.create :name => '王研究室', :faculty_id => 1
Lab.create :name => '岡研究室', :faculty_id => 1
Lab.create :name => '楠川・高坂研究室', :faculty_id => 1
Lab.create :name => '蝶野・辻研究室', :faculty_id => 1
Lab.create :name => '筒井研究室', :faculty_id => 1
Lab.create :name => '両角研究室', :faculty_id => 1
Lab.create :name => '大塚研究室', :faculty_id => 1
Lab.create :name => '竹内研究室', :faculty_id => 1

Lab.create :name => '綿森研究室', :faculty_id => 1
Lab.create :name => '八田研究室', :faculty_id => 1
Lab.create :name => '橘研究室', :faculty_id => 1
Lab.create :name => '岩下研究室', :faculty_id => 1
Lab.create :name => '榎波研究室', :faculty_id => 1
Lab.create :name => '星野研究室', :faculty_id => 1
Lab.create :name => '山本研究室', :faculty_id => 1
Lab.create :name => '真田研究室', :faculty_id => 1

Lab.create :name => '吉沢研究室', :faculty_id => 2
Lab.create :name => '堀澤研究室', :faculty_id => 2
Lab.create :name => '角研究室', :faculty_id => 2
Lab.create :name => '前田下研究室', :faculty_id => 2
Lab.create :name => '村上研究室', :faculty_id => 2
Lab.create :name => '榎本研究室', :faculty_id => 2

Lab.create :name => '植田研究室', :faculty_id => 3
Lab.create :name => '松崎研究室', :faculty_id => 3
Lab.create :name => '島村研究室', :faculty_id => 3
Lab.create :name => '濱村研究室', :faculty_id => 3
Lab.create :name => '清水研究室', :faculty_id => 3
Lab.create :name => '妻鳥研究室', :faculty_id => 3
Lab.create :name => '吉田研究室', :faculty_id => 3
Lab.create :name => '篠森研究室', :faculty_id => 3
Lab.create :name => '岩田研究室', :faculty_id => 3
Lab.create :name => '高田研究室', :faculty_id => 3
Lab.create :name => '福本研究室', :faculty_id => 3
Lab.create :name => '坂本研究室', :faculty_id => 3
Lab.create :name => '任研究室', :faculty_id => 3
Lab.create :name => '横山研究室', :faculty_id => 3
Lab.create :name => '繁桝研究室', :faculty_id => 3

Lab.create :name => '岡本研究室', :faculty_id => 4
Lab.create :name => '桂研究室', :faculty_id => 4
Lab.create :name => '坂本研究室', :faculty_id => 4
Lab.create :name => '園下研究室', :faculty_id => 4
Lab.create :name => '中村研究室', :faculty_id => 4
Lab.create :name => '馬渕研究室', :faculty_id => 4

#論文作成
Thesis.create :title => '～について', :author => 'TEST', :student_id => '1150001', :course => '学士', :year => 2014, :lab_id => 38, :faculty_id => 3, :enabled => true, :file => 'public/docs/test1.pdf'
Thesis.create :title => '・・・について', :author => 'TEST', :student_id => '1150001', :course => '修士', :year => 2014, :lab_id => 38, :faculty_id => 3, :enabled => true, :file => 'public/docs/test2.pdf'
Thesis.create :title => '？？？について', :author => 'TEST', :student_id => '1150001', :course => '博士', :year => 2014, :lab_id => 38, :faculty_id => 3, :enabled => true, :file => 'public/docs/test2.pdf'
Thesis.create :title => '○○について', :author => 'TEST', :student_id => '1150002', :course => '学士', :year => 2014, :lab_id => 38, :faculty_id => 3, :enabled => true, :file => 'public/docs/test3.pdf'
Thesis.create :title => 'ーーについて', :author => 'TEST', :student_id => '1150003', :course => '学士', :year => 2015, :lab_id => 38, :faculty_id => 3, :enabled => true, :file => 'public/docs/test4.pdf'