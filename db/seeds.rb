# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

[ 
  [
    'イヌ',
    'わん！！ いい飼い主に出会えるといいね！'
  ],
  [
    '花',
    '綺麗に咲こう！！'
  ],
  [
    'コアラ',
    '寝放題！！来世はスーパースローライフです'
  ],
  [
    'ツバメ',
    'どこまでも飛んでいこう！'
  ],
  [
    'ミツバチ',
    '女王に心臓を捧げよ!!'
  ],
  [
    'ネコ',
    '好き勝手生きよう！たぶん何をしても許されます'
  ],
  [
    'イルカ',
    '海を自由に冒険しよう！！'
  ],
  [
    '木',
    '木！！'
  ],
  [
    '蝶',
    '大人になるまでが大変！！'
  ],
  [
    'ハト',
    'ゆっくり過ごしたり、どこかに飛んで行ったり。割と自由です'
  ],
  [
    'ペンギン',
    '魚獲り頑張って'
  ],
  [
    'アザラシ',
    'ゆったり泳ごう'
  ],
  [
    'ゾウ',
    'でかいね！！'
  ],
  [
    'オランウータン',
    '惜しい！'
  ],
  [
    '人間',
    '人生楽しんで！！'
  ]
].each do |info|
  name = info[0]
  comment = info[1]
  Animal.create!(name: name, comment: comment)
end

# 質問とその選択肢を作成
question = Question.create!(title: '来世で一番優先したいことは？')
[
  ['家族や仲間と楽しく過ごす', 3, 0, 0, 0],
  ['大きな目標を達成する', 0, 3, 0, 0],
  ['ゆったりと自分の時間を満喫する', 0, 0, 3, 0],
  ['できるだけ色んな場所に行きたい', 0, 0, 0, 3]
].each do |info|
  content = info[0]
  question.options.create!(
    content: content,
    love_point: info[1],
    diligence_point: info[2],
    freedom_point: info[3],
    adventure_point: info[4]
  )
end

# 質問とその選択肢を作成
question = Question.create!(title: '理想のパートナー像は？')
[
  ['一緒にいて安心できる', 3, 0, 0, 0],
  ['努力家で目標に向かって頑張る人', 0, 3, 0, 0],
  ['お互いを尊重しあって、お互い自由に過ごせる人', 0, 0, 3, 0],
  ['新しいことに挑戦するのが好きな人', 0, 0, 0, 3]
].each do |info|
  content = info[0]
  question.options.create!(
    content: content,
    love_point: info[1],
    diligence_point: info[2],
    freedom_point: info[3],
    adventure_point: info[4]
  )
end

# 質問とその選択肢を作成
question = Question.create!(title: '一番好きな一日の過ごし方は？')
[
  ['友達と一緒に旅行', 3, 0, 0, 0],
  ['何かに夢中になって取り組む', 0, 3, 0, 0],
  ['予定を決めずに過ごす', 0, 0, 3, 0],
  ['やったことのないことに挑戦！', 0, 0, 0, 3]
].each do |info|
  content = info[0]
  question.options.create!(
    content: content,
    love_point: info[1],
    diligence_point: info[2],
    freedom_point: info[3],
    adventure_point: info[4]
  )
end
