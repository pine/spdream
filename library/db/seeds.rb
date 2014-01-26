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
Lab.create :name => '前田研究室', :faculty_id => 2
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
Thesis.create :title => 'LEDマトリクスを用いたアート作品のためのビジュアルプログラミング環境', :author => '今井 達郎', :student_id => '1130302', :course => '学士', :year => 2012, :lab_id => 34, :faculty_id => 3, :enabled => true, :full_text => true
Thesis.create :title => 'Webアプリケーションを対象とするモデル検査法の効率化に関する研究', :author => '浦部 未来', :student_id => '1130309', :course => '学士', :year => 2012, :lab_id => 34, :faculty_id => 3, :enabled => true, :full_text => true
Thesis.create :title => 'Cプログラムを対象としたシェープ解析アルゴリズムの実装', :author => '水野 雄介', :student_id => '1130391', :course => '学士', :year => 2012, :lab_id => 34, :faculty_id => 3, :enabled => true, :full_text => true

Thesis.create :title => '木構造データの縮約アルゴリズムのHadoop上での実現とその評価', :author => '尾形 勇磨', :student_id => '1130320', :course => '学士', :year => 2012, :lab_id => 26, :faculty_id => 3, :enabled => true, :full_text => true
Thesis.create :title => 'MapReduceフレームワークを用いた木構造処理の実現に関する研究', :author => '川村 高之', :student_id => '1120232', :course => '学士', :year => 2011, :lab_id => 26, :faculty_id => 3, :enabled => true, :full_text => true
Thesis.create :title => 'モンテカルロ法を適用した大貧民プレイヤのプレイアウトの性質に関する研究', :author => '地曳 隆将', :student_id => '1120249', :course => '学士', :year => 2011, :lab_id => 26, :faculty_id => 3, :enabled => true, :full_text => true
Thesis.create :title => '数独の少数ヒント問題の生成に関する研究', :author => '那須 律政', :student_id => '1120254', :course => '学士', :year => 2011, :lab_id => 26, :faculty_id => 3, :enabled => true, :full_text => true

Thesis.create :title => 'EPUBCFIを用いたデジタル教科書ビューアの開発', :author => '安楽 優樹', :student_id => '1130296', :course => '学士', :year => 2012, :lab_id => 30, :faculty_id => 3, :enabled => true, :full_text => true

Thesis.create :title => '難読言語Malbolgeの逆コンパイル困難性に関する研究', :author => '菅　優也', :student_id => '1110243', :course => '学士', :year => 2010, :lab_id => 34, :faculty_id => 3, :enabled => true, :full_text => true
Thesis.create :title => 'モデル検査器JavaPathfinderにおける実行とレース出力の改善', :author => '菅 優也', :student_id => '1110243', :course => '修士', :year => 2012, :lab_id =>34, :faculty_id => 3, :enabled => true, :full_text => true

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
Tag.create :name => 'レポート', :intro => 'レポートに使える本につけるタグ', :priority => '1', :enabled => true, :request => true
Tag.create :name => '感動', :intro => '感動できる本につけるタグ', :priority => '2', :enabled => true, :request => true
Tag.create :name => '資格', :intro => '資格に使える本につけるタグ', :priority => '3', :enabled => true, :request => true
Tag.create :name => '基本情報技術者資格', :intro => '基本情報技術者資格に使える本につけるタグ', :priority => '4', :enabled => true, :request => true
Tag.create :name => '応用情報技術者資格', :intro => '応用情報技術者資格に使える本につけるタグ', :priority => '5', :enabled => true, :request => true
Tag.create :name => 'ITパスポート', :intro => 'ITパスポートに使える本につけるタグ', :priority => '6', :enabled => true, :request => true
Tag.create :name => 'SPI', :intro => 'SPIに使える本につけるタグ', :priority => '7', :enabled => true, :request => true
Tag.create :name => '面接', :intro => '面接に使える本につけるタグ', :priority => '8', :enabled => true, :request => true
Tag.create :name => '自己啓発', :intro => '自己啓発に使える本につけるタグ', :priority => '9', :enabled => true, :request => true
Tag.create :name => 'エントリーシート', :intro => 'エントリーシートに使える本につけるタグ', :priority => '10', :enabled => true, :request => true
Tag.create :name => 'プレゼン', :intro => 'プレゼンに使える本につけるタグ', :priority => '11', :enabled => true, :request => true
Tag.create :name => 'プログラミング', :intro => 'プログラミングに使える本につけるタグ', :priority => '12', :enabled => true, :request => true
Tag.create :name => '英検', :intro => '英検に使える本につけるタグ', :priority => '13', :enabled => true, :request => true
Tag.create :name => 'TOEIC', :intro => 'TOEICに使える本につけるタグ', :priority => '14', :enabled => true, :request => true
Tag.create :name => '公認会計士', :intro => '公認会計士に使える本につけるタグ', :priority => '15', :enabled => true, :request => true
Tag.create :name => 'PHP', :intro => 'PHPに使える本につけるタグ', :priority => '16', :enabled => true, :request => true
Tag.create :name => 'JavaScript', :intro => 'JavaScriptに使える本につけるタグ', :priority => '17', :enabled => true, :request => true
Tag.create :name => 'TCP/IP', :intro => 'TCP/IPに使える本につけるタグ', :priority => '18', :enabled => true, :request => true
Tag.create :name => 'Ruby on Rails', :intro => 'Ruby on Railsに使える本につけるタグ', :priority => '19', :enabled => true, :request => true

#蔵書
Book.create :title => 'はじめてのPHP言語 プログラミング入門', :auther => '大垣靖男', :outline => 'PHPはWebアプリケーション開発言語として広く使われていますが、その実力はWebだけに限られているわけではありません。本書はプログラミング言語としてのPHPを解説することに重点をおいた入門書です。', :isbn10 => 4774122866, :isbn13 => 0, :opac_id => 1, :value => 4, :category_id => 1, :child_category_id => 1, :request => true, :tag0 => 'PHP', :tag1 => 'プログラミング', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => 'PHP携帯サイト　デベロッパーズバイブル', :auther => '荒木稔', :outline => '本書は複雑になりがちな携帯サイトの仕様や技術を、ノウハウを知りえた情報を元に紐解いwていきます。', :isbn10 => 0, :isbn13 => 978479734846, :opac_id => 5, :value => 3, :category_id => 1, :child_category_id => 1, :request => true, :tag0 => 'PHP', :tag1 => 'プログラミング', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => '802.00無線ネットワーク管理', :auther => 'Matthew Gast', :outline => '規格書を併読しなくても802.11プロトコルを理解できる「IEEEの規格書いらず」の実践ガイド。規格書の仕様に縛られずにプロトコルの全体的な動きや内容を解説します。', :isbn10 => 4873113083, :isbn13 => 0, :opac_id => 6, :value => 4, :category_id => 1, :child_category_id => 4, :request => true, :tag0 => 'レポート', :tag1 => '', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => 'JavaScript', :auther => 'David Flanagan', :outline => '本書は「JavaScript: The Definitive Guide, Fifth Edition」の日本語版です。日本語版出版にあたり、言語解説部分とリファレンス部分に分け、本書はその言語解説部分をまとめたものです。', :isbn10 => 0, :isbn13 => 9784873113296, :opac_id => 445, :value => 5, :category_id => 1, :child_category_id => 3, :request => true, :tag0 => 'レポート', :tag1 => 'プログラミング', :tag2 => 'JavaScript', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => 'TCP/IP', :auther => 'Craig Hunt', :outline => '本書はネットワーク管理者のバイブルとして知られるTCP/IP解説書の完全改訂版です。TCP/IPの基礎、ネットワークの設計、Unixカーネルの設定、経路制御、各種サーバやsendmailの設定などについて、詳細かつ「実用的」な情報を提供します。', :isbn10 => 4873111293, :isbn13 => 0, :opac_id => 894, :value => 4, :category_id => 1, :child_category_id => 4, :request => true, :tag0 => 'レポート', :tag1 => 'TCP/IP', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => 'はじめてのRuby on Rails', :auther => '清水美樹', :outline => '本書は、筆者が初めて「Ruby on Rails」と付き合っていた過程をそのまま本にしたものです。', :isbn10 => 4777512320, :isbn13 => 0, :opac_id => 84, :value => 2, :category_id => 1, :child_category_id => 1, :request => true, :tag0 => 'プログラミング', :tag1 => 'Ruby on Rails', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => 'かんたんRuby on RailsでWebアプリケーション開発', :auther => 'arton', :outline => '本書は手で覚えることを主眼としたRuby on Railsの入門書です。説明は必要最低限のものに抑えてあります。まずは実際にプログラムを打ち込んで、動かして、そして実際の動きを確認してください。', :isbn10 => 4798111570, :isbn13 => 0, :opac_id => 465, :value => 3, :category_id => 1, :child_category_id => 1, :request => true, :tag0 => 'プログラミング', :tag1 => 'Ruby on Rails', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => 'Ruby on Rails入門　優しいRailsの育て方', :auther => '西和則', :outline => 'オブジェクト指向の基本からWebアプリケーションの作り方、プラグインからテスト、改造までぎっしり詰め込んで、Rubyはよく知らない人もRubyだけでRailsは使ってない人も、既にRailsを使っている人も誰でも安心。', :isbn10 => 4798013951, :isbn13 => 0, :opac_id => 84, :value => 4, :category_id => 1, :child_category_id => 1, :request => true, :tag0 => 'プログラミング', :tag1 => 'Ruby on Rails', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => 'マスタリングTCP/IP入門編第5版', :auther => '竹下隆史・村上公保・荒井透・苅田幸雄', :outline => '本書によって読者の方々が、TCP/IPとコンピュータネットワークをマスターするための足がかりを得るとともに、その全体像を把握していただければと思っています。', :isbn10 => 0, :isbn13 => 9784274068768, :opac_id => 48, :value => 5, :category_id => 1, :child_category_id => 4, :request => true, :tag0 => 'レポート', :tag1 => 'TCP/IP', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => 'エントリーシート　履歴書・志望動機・自己PR 完全版', :auther => '坂本直文', :outline => '著者は、劇的就職塾をはじめ、全国の各大学就職課や大学生協と提携して、数多くの就職講座を主宰しています。日々、様々なタイプの学生にエントリーシートや履歴書の書き方を指導しており、あらゆる悩みに向き合っていきました。本書はその指導をもとに作成しており、エントリーシート・履歴書に「圧勝」できる実戦技や裏技が多数盛り込まれています。', :isbn10 => 0, :isbn13 => 9784471706227, :opac_id => 7, :value => 1, :category_id => 5, :child_category_id => 1, :request => true, :tag0 => 'エントリーシート', :tag1 => '', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => '面接　自己PR・志望動機 完全版', :auther => '坂本直文', :outline => '本書は、著者が就職指導を行ってきた内定者の協力をもとに作成されています。', :isbn10 => 0, :isbn13 => 97844471706234, :opac_id => 874, :value => 3, :category_id => 5, :child_category_id => 1, :request => true, :tag0 => '面接', :tag1 => '', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => '全解SPI実戦問題集', :auther => '高橋書店', :outline => '実際のSPI試験に沿った形式で、豊富に問題を載せ、丁寧でわかりやすい解説がしてあります。', :isbn10 => 447164640, :isbn13 => 0, :opac_id => 968, :value => 3, :category_id => 5, :child_category_id => 1, :request => true, :tag0 => 'SPI', :tag1 => '', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => 'TOEIC TEST初心者のための模擬問題集', :auther => '高橋書店', :outline => '本書は初心者・初級者の皆様が着実にTOEICの得点を伸ばすために組まれたTOEIC問題集です。', :isbn10 => 4471274112, :isbn13 => 0, :opac_id => 49, :value => 3, :category_id => 5, :child_category_id => 1, :request => true, :tag0 => 'TOEIC'
Book.create :title => '死なないやつら', :auther => '長沼毅', :outline => '生命とは何か? かつて多くの賢者が考えあぐねてきたこの根源的な問いに、私たちはいまだに答えることができません。ならば、極端な「エッジ」を眺めてその本質をあぶりだしてみよう、というのが本書の出発点です。超高温、超高塩分、強度の放射線、強度の重力……過酷な環境をものともしない「極限生物」たちの驚異的なたくましさは、過剰としかいいようがありません。ヒトの致死量の1000倍以上の放射線に耐えるやつ、地球上に存在しない強烈な重力に耐えるやつ…思わず「その能力、いらんやろ?」とツッコみたくなります。ずか1マイクロメートルほどの微生物にすぎない彼ら、小さなチャンピオンたちを見ていると「いったいなぜこんな進化をとげたのか?」という疑問にとりつかれ、「生命」がますますわからなくなってきます。そして、人類は本当に地球でもっとも進化した生物なのかどうかも、怪しく思えてきます。地球最強の生物は「ハロモナス」かもしれません!しかし、実はこの「わけのわからなさ」にこそ生命の本質があります。酸化も還元もしない「不安定な炭素化合物」であるにもかかわらず、生命が地球上で40億年も続いてきた謎の答えがあるのです。なぜ宇宙に生命ができたのか? これから私たちはどう進化していくのか?次々に突きつけられる問いを考えていくうちに、生命についての見方がまったく変わってしまう経験があなたを待っています。世界中の極限環境を歩いた「科学界のインディ・ジョーンズ」の面目躍如、文句なしに面白くてエキサイティングな生命論です! ', :isbn10 => 4062578441, :isbn13 => 0, :opac_id => 134, :value => 4, :category_id => 6, :child_category_id => 5, :request => true, :tag0 => '', :tag1 => '', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => '脳を活かす伝え方、聞き方', :auther => '茂木健一郎', :outline => 'なぜ会話をすると脳にいいのか、本書ではコミュニケーションベタを克服した著者の豊富な実例とエピソードで学べる一冊。 ', :isbn10 => 0, :isbn13 => 9784569816692, :opac_id => 98, :value => 3, :category_id => 6, :child_category_id => 5, :request => true, :tag0 => '', :tag1 => '', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => '気候変動はなぜ起こるのか', :auther => 'ウォーレス・ブロッカー', :outline => '人類の時代といわれる第四紀(200万年前から現在)は寒冷化の時代で、数回にわたり氷期が訪れた。氷期の原因はミランコビッチの歳差運動と考えられているが、それでは説明できない急激な気候変動が発見されていた。ブロッカーはその原因を、グレート・オーシャン・コンベヤーと名付けた海洋大循環の振る舞いに求めた。 そして近い将来、地球温暖化によってコンベヤーは止まってしまうのだろうか?', :isbn10 => 4062578468, :isbn13 => 0, :opac_id => 1543, :value => 5, :category_id => 6, :child_category_id => 5, :request => true, :tag0 => ''
Book.create :title => '心は前をむいている', :auther => '串崎真志', :outline => '三か月児から大人までを対象とした多くの心理学実験が、人の心の基本設計をどう描きだしているのだろうか。信頼、想像、錯覚、がまん、疲労、悲しみなどのキーワードごとに、実験を通して心の向き方を解説していきます。後ろ向きになりやすく、ネガティブな感情にも役立つ機能があることから、前を向くための秘訣は? ', :isbn10 => 4005007627, :isbn13 => 0, :opac_id => 2461, :value => 2, :category_id => 6, :child_category_id => 5, :request => true, :tag0 => '', :tag1 => '', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''
Book.create :title => '化学vsキリスト教', :auther => '岡崎勝世', :outline => '「天地創造は六千年前」──それが、聖書の記述こそが正当な歴史とされてきたヨーロッパにおける、古代から中世に至る長い間の「常識」でした。逆に言えば、彼らの感覚にとって、「六千年」というのは恐ろしく長い時間と見なされていたと言うことでもあります。ところが、ルネサンスおよび大航海時代の始まりにより科学的な探求が始まり、地理上の知見がこれまでになく大きな広がりを見せるようになると、様々なところで聖書の記述と齟齬をきたす事実が発見されるようになります。たとえば中国の歴史が知られるようになると、それがどうやら「六千年」よりも古いことが明らかになり、「天地創造は六千年前」というそれまでは自明と思われていた「常識」が揺らぎ始めます。また、地質学の知見によっても、地球の歴史が六千年よりも実はかなり長いのではないかと考える学者たちが現れるようになります。例えばダーウインは、当時としては大胆なことに地球の歴史を三億年前までさかのぼらせます(もっとも、この説は非難を浴び、結局ダーウインは後に撤回することになるのですが)。かくして「普遍的」と思われていた聖書をベースとした歴史(これを普遍史と呼びます)は、至る所で綻びを見せ始め、ついには深刻な危機に陥ります。神の存在の元、意味ある統一体をなしていたと思われていた宇宙は、デカルト・ニュートンによって単に機械的な運動をする物体の集まりに他ならないとされ、アダムはすべての人類の祖としての地位を失い、またリンネによって、人間も動物の一種へと「降格」されてしまいます。またその一方では、この「革命」のおかげをもって歴史が聖書から「独立」し、現在のような歴史学としての出発点を築くことにもなりました。本書では、「科学」の発展によってヨーロッパの人々の世界認識が根底から覆されてゆくプロセスを、デカルト、ニュートン、ビュフォン、リンネ、ダーウィンなど著名な科学者、哲学者から、ガッテラー、シュレーツァーなど今では忘れられてしまった歴史家の仕事なども追いながら丹念にたどってゆきます。 ', :isbn10 => 4062882418, :isbn13 => 0, :opac_id => 1074, :value => 3, :category_id => 6, :child_category_id => 5, :request => true, :tag0 => '', :tag1 => '', :tag2 => '', :tag3 => '', :tag4 => '', :tag5 => '', :tag6 => '', :tag7 => ''

#レビュー
Review.create :title => 'PHPがわかりました！', :comment => 'ソフトウェア工学でPHPを使うことになってこの本を読みました。非常にわかりやすく書いてあり参考になりました！', :value_good => 5, :value_bad => 2, :value_book => 5, :enabled => true, :request => true, :book_id => 1, :deleted => false
Review.create :title => 'PHP', :comment => '', :value_good => 1, :value_bad => 1, :value_book => 3, :enabled => true, :request => true, :book_id => 1, :deleted => false
Review.create :title => 'よくわからない', :comment => '初心者なので読んでみたけどよくわからなかった', :value_good => 0, :value_bad => 5, :value_book => 1, :enabled => true, :request => true, :book_id => 1, :deleted => false
Review.create :title => 'もう少しわかりやすくかいてほしい', :comment => 'ある程度は参考になったとは思いますがもう少し初心者に優しく書いて欲しいです。', :value_good => 1, :value_bad => 2, :value_book => 2, :enabled => true, :request => true, :book_id => 1, :deleted => false
Review.create :title => 'わかりやすくていいです', :comment => '読みやすかったです。', :value_good => 3, :value_bad => 0, :value_book => 4, :enabled => true, :request => true, :book_id => 1, :deleted => false

#スケジュール
Schedule.create :date => '2013/12/19',:time => '12:00:00', :type => 'News', :title => '休館のおしらせ', :intro => 'センター試験のため、 1月18日（土）は休館です。'
Schedule.create :date => '2013/12/19',:time => '15:00:00', :type => 'News', :title => '年末年始休業中の完全閉館のお知らせ', :intro => '年末年始の休業に伴い、2013年12月27日（金）19時 ～ 2014年1月6日（月）8時30分まで完全閉館となります。'
Schedule.create :date => '2013/11/01',:time => '15:00:00', :type => 'News', :title => 'SWEN.L VOL23を発行しました', :intro => '高知工科大学情報図書館の広報誌を公開しました。'
Schedule.create :date => '2013/11/18',:time => '15:00:00', :type => 'Event', :title => '［展示会］マネジメント学部作品展「紙漉き体験 in ゆすはら」', :intro => 'メンバーのほとんどが和紙づくりは初めてでしたが、ロギールさんの丁寧な指導のおかげで、それぞれの個性が出た、とても趣のある素敵な和紙に仕上がりました。この機会に学生たちの芸術作品に触れ、ぜひ梼原の自然・空気を感じてみてください。

開催日時:2013年11月18日（月）～11月29日（金） 8:30-19:00
開催場所:高知工科大学附属情報図書館１階ホール
主催:マネジメント学部　講師　生島 淳 
　 '
Schedule.create :date => '2013/11/18',:time => '12:00:00', :type => 'Event', :title => '［展示会］書道部「想書展」', :intro => '大学祭作品を再度図書館に展示します。より多くの学生に作品を見てもらいたいと思い企画いたしました。作品にはそれぞれの想いが詰まっています。どうぞご覧ください。

開催日時2013年11月18日（月）～11月29日（金） 8:30-19:00
開催場所:高知工科大学附属情報図書館 1階ホール
主催:書道部 '
Schedule.create :date => '2013/05/23',:time => '13:00:00', :type => 'Event', :title => '[企画展]美術に触れる', :intro => '葛飾北斎や安藤広重など日本浮世絵師の作品集や日本美術の歴史、またルーブル美術館やオルセー美術館の作品の数々を集めた写真集や西洋の美術に関する図書・DVDを、図書館１階エントランスホールに展示しています。
その他にも、株式会社トミナガ 代表取締役 冨永守彦様からご寄贈いただいた、ルーヴル美術館の最高傑作で造られた本格的美術全集『ルーヴルとパリの美術集』も展示。
 是非、お手にとりご覧ください。

開催日時:2013年10月1日（火）～11月15日（金） 8:30-19:00
開催場所:高知工科大学附属情報図書館 １階エントランスホール'
