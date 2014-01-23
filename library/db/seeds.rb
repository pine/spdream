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

#親カテゴリ
Category.create :name => '情報学群', :description => '情報学群のカテゴリです。', :priority => 1
Category.create :name => '環境理工学群', :description => '環境理工学群のカテゴリです。', :priority => 2
Category.create :name => 'システム工学群', :description => 'システム工学群のカテゴリです。', :priority => 3
Category.create :name => 'マネジメント学部', :description => 'マネジメント学部のカテゴリです。', :priority => 4
Category.create :name => 'おすすめ図書', :description => 'おすすめ図書のカテゴリです。', :priority => 5
Category.create :name => '新着図書', :description => '新着図書のカテゴリです。', :priority => 6

#子カテゴリ
ChildCategory.create :name => 'ソフトウェア工学',  :description => 'ソフトウェア工学のカテゴリです。', :priority => 1 , :category_id => 1
ChildCategory.create :name => '情報学群実験第3i',  :description => '情報学群実験第3iのカテゴリです。', :priority => 2 , :category_id => 1
ChildCategory.create :name => '情報学群実験第4i',  :description => '情報学群実験第4iのカテゴリです。', :priority => 3 , :category_id => 1
ChildCategory.create :name => '情報学群実験第3C',  :description => '情報学群実験第3Cのカテゴリです。', :priority => 4 , :category_id => 1
ChildCategory.create :name => '情報学群実験第4C',  :description => '情報学群実験第4Cのカテゴリです。', :priority => 5 , :category_id => 1
ChildCategory.create :name => '制御工学１',  :description => '制御工学１のカテゴリです。', :priority => 6 , :category_id => 2
ChildCategory.create :name => '界面化学',  :description => '界面化学のカテゴリです。', :priority => 7 , :category_id => 2
ChildCategory.create :name => 'エネルギービーム工学',  :description => 'エネルギービーム工学のカテゴリです。', :priority => 8 , :category_id => 2
ChildCategory.create :name => '遺伝子工学',  :description => '遺伝子工学のカテゴリです。', :priority => 9 , :category_id => 2
ChildCategory.create :name => '環境化学',  :description => '環境化学のカテゴリです。', :priority => 10 , :category_id => 2
ChildCategory.create :name => 'ロボット運動学',  :description => 'ロボット運動学のカテゴリです。', :priority => 11 , :category_id => 3
ChildCategory.create :name => '自動車工学',  :description => '自動車工学のカテゴリです。', :priority => 12 , :category_id => 3
ChildCategory.create :name => '航空力学',  :description => '航空力学のカテゴリです。', :priority => 13 , :category_id => 3
ChildCategory.create :name => 'ディジタル集積回路',  :description => 'ディジタル集積回路のカテゴリです。', :priority => 14 , :category_id => 3
ChildCategory.create :name => 'コントラクションマネジメント',  :description => 'コントラクションマネジメントのカテゴリです。', :priority => 15 , :category_id => 3
ChildCategory.create :name => 'マネジメントゲーム',  :description => 'マネジメントゲームのカテゴリです。', :priority => 16 , :category_id => 4
ChildCategory.create :name => '経営組織論',  :description => '経営組織論のカテゴリです。', :priority => 17 , :category_id => 4
ChildCategory.create :name => 'NPO論',  :description => 'NPO論のカテゴリです。', :priority => 18 , :category_id => 4
ChildCategory.create :name => 'ファイナンス論',  :description => 'ファイナンス論のカテゴリです。', :priority => 19 , :category_id => 4
ChildCategory.create :name => '産業構造論',  :description => '産業構造論のカテゴリです。', :priority => 20 , :category_id => 4
ChildCategory.create :name => '全学生向け',  :description => '全学生向けのカテゴリです。', :priority => 21 , :category_id => 5
ChildCategory.create :name => '情報学群向け',  :description => '情報学群向けのカテゴリです。', :priority => 22 , :category_id => 5
ChildCategory.create :name => '環境理工学群向け',  :description => '環境理工学群向けのカテゴリです。', :priority => 23 , :category_id => 5
ChildCategory.create :name => 'システム工学群向け',  :description => 'システム工学群向けのカテゴリです。', :priority => 24 , :category_id => 5
ChildCategory.create :name => 'マネジメント学部向け',  :description => 'マネジメント学部向けのカテゴリです。', :priority => 25 , :category_id => 5
ChildCategory.create :name => '2013年9月',  :description => '2013年9月のカテゴリです。', :priority => 26 , :category_id => 6
ChildCategory.create :name => '2013年10月',  :description => '2013年10月のカテゴリです。', :priority => 27 , :category_id => 6
ChildCategory.create :name => '2013年11月',  :description => '2013年11月のカテゴリです。', :priority => 28 , :category_id => 6
ChildCategory.create :name => '2013年12月',  :description => '2013年12月のカテゴリです。', :priority => 29 , :category_id => 6
ChildCategory.create :name => '2014年1月',  :description => '2014年1月のカテゴリです。', :priority => 30 , :category_id => 6

#タグ
Tag.create :name => 'レポート', :intro => 'レポートに使える本につけるタグ', :priority => '1', :enebled => true, :request => true
Tag.create :name => '感動', :intro => '感動できる本につけるタグ', :priority => '2', :enebled => true, :request => true
Tag.create :name => '資格', :intro => '資格に使える本につけるタグ', :priority => '3', :enebled => true, :request => true
Tag.create :name => '基本情報技術者資格', :intro => '基本情報技術者資格に使える本につけるタグ', :priority => '4', :enebled => true, :request => true
Tag.create :name => '応用情報技術者資格', :intro => '応用情報技術者資格に使える本につけるタグ', :priority => '5', :enebled => true, :request => true
Tag.create :name => 'ITパスポート', :intro => 'ITパスポートに使える本につけるタグ', :priority => '6', :enebled => true, :request => true
Tag.create :name => 'SPI', :intro => 'SPIに使える本につけるタグ', :priority => '7', :enebled => true, :request => true
Tag.create :name => '面接', :intro => '面接に使える本につけるタグ', :priority => '8', :enebled => true, :request => true
Tag.create :name => '自己啓発', :intro => '自己啓発に使える本につけるタグ', :priority => '9', :enebled => true, :request => true
Tag.create :name => 'エントリーシート', :intro => 'エントリーシートに使える本につけるタグ', :priority => '10', :enebled => true, :request => true
Tag.create :name => 'プレゼン', :intro => 'プレゼンに使える本につけるタグ', :priority => '11', :enebled => true, :request => true
Tag.create :name => 'プログラミング', :intro => 'プログラミングに使える本につけるタグ', :priority => '12', :enebled => true, :request => true
Tag.create :name => '英検', :intro => '英検に使える本につけるタグ', :priority => '13', :enebled => true, :request => true
Tag.create :name => 'TOEIC', :intro => 'TOEICに使える本につけるタグ', :priority => '14', :enebled => true, :request => true
Tag.create :name => '公認会計士', :intro => '公認会計士に使える本につけるタグ', :priority => '15', :enebled => true, :request => true
Tag.create :name => 'PHP', :intro => 'PHPに使える本につけるタグ', :priority => '16', :enebled => true, :request => true
Tag.create :name => 'JavaScript', :intro => 'JavaScriptに使える本につけるタグ', :priority => '17', :enebled => true, :request => true
Tag.create :name => 'TCP/IP', :intro => 'TCP/IPに使える本につけるタグ', :priority => '18', :enebled => true, :request => true
Tag.create :name => 'Ruby on Rails', :intro => 'Ruby on Railsに使える本につけるタグ', :priority => '19', :enebled => true, :request => true


#蔵書
Book.create :title => 'はじめてのPHP言語 プログラミング入門', :auther => '大垣靖男', :outline => 'PHPはWebアプリケーション開発言語として広く使われていますが、その実力はWebだけに限られているわけではありません。本書はプログラミング言語としてのPHPを解説することに重点をおいた入門書です。', :isbn10 => 4774122866, :isbn13 => 0, :opac_id => 1, :value => 4, :category_id => 1, :child_category_id => 1, :enabled => true, :tag0 => 'PHP', :tag1 => 'プログラミング'
Book.create :title => 'PHP携帯サイト　デベロッパーズバイブル', :auther => '荒木稔', :outline => '本書は複雑になりがちな携帯サイトの仕様や技術を、ノウハウを知りえた情報を元に紐解いていきます。', :isbn10 => 0, :isbn13 => 978479734846, :opac_id => 5, :value => 3, :category_id => 1, :child_category_id => 1, :enabled => true, :tag0 => 'PHP', :tag1 => 'プログラミング'
Book.create :title => '802.00無線ネットワーク管理', :auther => 'Matthew Gast', :outline => '規格書を併読しなくても802.11プロトコルを理解できる「IEEEの規格書いらず」の実践ガイド。規格書の仕様に縛られずにプロトコルの全体的な動きや内容を解説します。', :isbn10 => 4873113083, :isbn13 => 0, :opac_id => 6, :value => 4, :category_id => 1, :child_category_id => 4, :enabled => true, :tag0 => 'レポート'
Book.create :title => 'JavaScript', :auther => 'David Flanagan', :outline => '本書は「JavaScript: The Definitive Guide, Fifth Edition」の日本語版です。日本語版出版にあたり、言語解説部分とリファレンス部分に分け、本書はその言語解説部分をまとめたものです。', :isbn10 => 0, :isbn13 => 9784873113296, :opac_id => 445, :value => 5, :category_id => 1, :child_category_id => 3, :enabled => true, :tag0 => 'レポート', :tag1 => 'プログラミング', :tag2 => 'JavaScript'
Book.create :title => 'TCP/IP', :auther => 'Craig Hunt', :outline => '本書はネットワーク管理者のバイブルとして知られるTCP/IP解説書の完全改訂版です。TCP/IPの基礎、ネットワークの設計、Unixカーネルの設定、経路制御、各種サーバやsendmailの設定などについて、詳細かつ「実用的」な情報を提供します。', :isbn10 => 4873111293, :isbn13 => 0, :opac_id => 894, :value => 4, :category_id => 1, :child_category_id => 4, :enabled => true, :tag0 => 'レポート', :tag1 => 'TCP/IP'
Book.create :title => 'はじめてのRuby on Rails', :auther => '清水美樹', :outline => '本書は、筆者が初めて「Ruby on Rails」と付き合っていた過程をそのまま本にしたものです。', :isbn10 => 4777512320, :isbn13 => 0, :opac_id => 84, :value => 2, :category_id => 1, :child_category_id => 1, :enabled => true, :tag0 => 'プログラミング', :tag1 => 'Ruby on Rails'
Book.create :title => 'かんたんRuby on RailsでWebアプリケーション開発', :auther => 'arton', :outline => '本書は手で覚えることを主眼としたRuby on Railsの入門書です。説明は必要最低限のものに抑えてあります。まずは実際にプログラムを打ち込んで、動かして、そして実際の動きを確認してください。', :isbn10 => 4798111570, :isbn13 => 0, :opac_id => 465, :value => 3, :category_id => 1, :child_category_id => 1, :enabled => true, :tag0 => 'プログラミング', :tag1 => 'Ruby on Rails'
Book.create :title => 'Ruby on Rails入門　優しいRailsの育て方', :auther => '西和則', :outline => 'オブジェクト指向の基本からWebアプリケーションの作り方、プラグインからテスト、改造までぎっしり詰め込んで、Rubyはよく知らない人もRubyだけでRailsは使ってない人も、既にRailsを使っている人も誰でも安心。', :isbn10 => 4798013951, :isbn13 => 0, :opac_id => 84, :value => 4, :category_id => 1, :child_category_id => 1, :enabled => true, :tag0 => 'プログラミング', :tag1 => 'Ruby on Rails'
Book.create :title => 'マスタリングTCP/IP入門編第5版', :auther => '竹下隆史・村上公保・荒井透・苅田幸雄', :outline => '本書によって読者の方々が、TCP/IPとコンピュータネットワークをマスターするための足がかりを得るとともに、その全体像を把握していただければと思っています。', :isbn10 => 0, :isbn13 => 9784274068768, :opac_id => 48, :value => 5, :category_id => 1, :child_category_id => 4, :enabled => true, :tag0 => 'レポート', :tag1 => 'TCP/IP'
Book.create :title => 'エントリーシート　履歴書・志望動機・自己PR 完全版', :auther => '坂本直文', :outline => '著者は、劇的就職塾をはじめ、全国の各大学就職課や大学生協と提携して、数多くの就職講座を主宰しています。日々、様々なタイプの学生にエントリーシートや履歴書の書き方を指導しており、あらゆる悩みに向き合っていきました。本書はその指導をもとに作成しており、エントリーシート・履歴書に「圧勝」できる実戦技や裏技が多数盛り込まれています。', :isbn10 => 0, :isbn13 => 9784471706227, :opac_id => 7, :value => 1, :category_id => 5, :child_category_id => 1, :enabled => true, :tag0 => 'エントリーシート'
Book.create :title => '面接　自己PR・志望動機 完全版', :auther => '坂本直文', :outline => '本書は、著者が就職指導を行ってきた内定者の協力をもとに作成されています。', :isbn10 => 0, :isbn13 => 97844471706234, :opac_id => 874, :value => 3, :category_id => 5, :child_category_id => 1, :enabled => true, :tag0 => '面接'
Book.create :title => '全解SPI実戦問題集', :auther => '高橋書店', :outline => '実際のSPI試験に沿った形式で、豊富に問題を載せ、丁寧でわかりやすい解説がしてあります。', :isbn10 => 447164640, :isbn13 => 0, :opac_id => 968, :value => 3, :category_id => 5, :child_category_id => 1, :enabled => true, :tag0 => 'SPI'
Book.create :title => 'TOEIC TEST初心者のための模擬問題集', :auther => '高橋書店', :outline => '本書は初心者・初級者の皆様が着実にTOEICの得点を伸ばすために組まれたTOEIC問題集です。', :isbn10 => 4471274112, :isbn13 => 0, :opac_id => 49, :value => 3, :category_id => 5, :child_category_id => 1, :enabled => true, :tag0 => 'TOEIC'

#レビュー
Review.create :title => 'PHPがわかりました！', :comment => 'ソフトウェア工学でPHPを使うことになってこの本を読みました。非常にわかりやすく書いてあり参考になりました！', :value_good => 5, :value_bad => 2, :value_book => 5, :enabled => true, :book_id => 1, :deleted => false
Review.create :title => 'PHP', :comment => '', :value_good => 1, :value_bad => 1, :value_book => 3, :enabled => true, :book_id => 1, :deleted => false
Review.create :title => 'よくわからない', :comment => '初心者なので読んでみたけどよくわからなかった', :value_good => 0, :value_bad => 5, :value_book => 1, :enabled => true, :book_id => 1, :deleted => false
Review.create :title => 'もう少しわかりやすくかいてほしい', :comment => 'ある程度は参考になったとは思いますがもう少し初心者に優しく書いて欲しいです。', :value_good => 1, :value_bad => 2, :value_book => 2, :enabled => true, :book_id => 1, :deleted => false
Review.create :title => 'わかりやすくていいです', :comment => '読みやすかったです。', :value_good => 3, :value_bad => 0, :value_book => 4, :enabled => true, :book_id => 1, :deleted => false







