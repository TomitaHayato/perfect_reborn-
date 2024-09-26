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
    '頑張って綺麗に咲きましょう！ No1にはならなくていいっぽい'
  ],
  [
    'コアラ',
    '寝放題！！来世はスーパースローライフです'
  ],
  [
    'ツバメ',
    'どこまでも飛んでいこう！！'
  ],
  [
    'ミツバチ',
    '女王様に心臓を捧げよ!!'
  ],
  [
    'ネコ',
    '好き勝手生きよう！たぶん何をしても許されます。かわいいから！！'
  ],
  [
    'イルカ',
    '海を自由に冒険しよう！！'
  ],
  [
    '木',
    '木です'
  ],
  [
    '蝶',
    '大人になるまでが大変！！'
  ],
  [
    'ハト',
    'ゆっくり過ごしたり、どこかに飛んで行ったり。かなり自由'
  ],
  [
    'ペンギン',
    '寒そうだけど頑張って！ スケートやり放題の人生'
  ],
  [
    'アザラシ',
    'ゆったり泳ごう！川に遊びに行くとアイドルになれるかも..?'
  ],
  [
    'ゾウ',
    'でかいよね！ 家族と散歩しよう'
  ],
  [
    'オランウータン',
    '惜しい！'
  ],
  [
    '人間',
    'おめでとう！人間です！人生楽しんで！！'
  ]
].each do |info|
  name = info[0]
  comment = info[1]
  Animal.create!(name: name, comment: comment)
end

# 質問とその選択肢を作成
question = Question.create!(title: '来世で一番優先したいことは？')
[
  ['家族や仲間と楽しく過ごす', 2, 0, 0, 0],
  ['大きな目標を達成する', 0, 2, 0, 0],
  ['ゆったりと自分の時間を満喫する', 0, 0, 2, 0],
  ['できるだけ色んな場所に行きたい', 0, 0, 0, 2]
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
  ['一緒にいて安心できる', 2, 0, 0, 0],
  ['努力家で目標に向かって頑張る人', 0, 2, 0, 0],
  ['お互いを尊重しあって、お互い自由に過ごせる人', 0, 0, 2, 0],
  ['新しいことに挑戦するのが好きな人', 0, 0, 0, 2]
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
  ['友達と一緒に旅行', 2, 0, 0, 0],
  ['何かに夢中になって取り組む', 0, 2, 0, 0],
  ['予定を決めずに過ごす', 0, 0, 2, 0],
  ['やったことのないことに挑戦！', 0, 0, 0, 2]
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

question = Question.create!(title: 'あなたにとって理想のリーダーとは？')
[
  ['チームを支え、仲間を大切にするリーダー', 1, 1, 0, 0],
  ['明確な目標に向かって粘り強く進むリーダー', 0, 2, -1, 0],
  ['リスクを恐れず、新しい挑戦を推奨するリーダー', 0, 0, 1, 1],
  ['自由で柔軟な発想を持ち、規則に縛られないリーダー', -1, -1, 1, 1]
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

question = Question.create!(title: 'あなたがもしスーパーヒーローになったら、どんな能力を使いますか？')
[
  ['他人の気持ちを癒す「愛の力」', 2, 0, 0, -1],
  ['どんな問題も計画的に解決する「超思考力」', 0, 2, 0, 0],
  ['未知の場所に瞬時に移動できる「瞬間移動」', 0, 0, 1, 1]
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

question = Question.create!(title: '上司にするなら？')
[
  ['七海建人', 0, 2, 0, 0],
  ['夏油傑', 1, 1, 0, 0],
  ['五条悟', 0, 0, 1, 1],
  ['東堂葵', 0, 0, 0, 2],
  ['どれも知らない', 0, 0, 0, 0]
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

question = Question.create!(title: '一日の終わりに、あなたが一番求めるものは？')
[
  ['飲み会！', 2, -1, -1, 0],
  ['家でごろごろ', -2, 0, 2, 0],
  ['その日の成果を振り返り、充実感を得ること', 0, 2, -1, 0],
  ['本や映画を楽しむ', -1, 0, 0, 2]
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

question = Question.create!(title: '自分のテリトリー（生活空間）は、どんなスタイルが理想？')
[
  ['家族や友達が集まる、賑やかな場所', 2, 0, 0, 0],
  ['きっちりと整理された、効率的な空間', 0, 2, -1, 0],
  ['一人の時間を楽しめる静かな空間', -1, 0, 2, 0],
  ['自分の思い通りに改造できる基地', 0, 0, 0, 2]
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

question = Question.create!(title: 'この中で最も嫌なのは？')
[
  ['相談できる人がいない', 2, 0, 0, 0],
  ['常に周りに合わせないといけない', -1, 0, 1, 1],
  ['やることがなくてめっちゃ暇', 0, 1, 0, 1],
  ['忙しすぎて時間がない', 0, -1, 2, 0]
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

question = Question.create!(title: '欲しい秘密道具は？')
[
  ['暗記パン', 0, 2, 0, 0],
  ['ほんやくコンニャク', 1, 0, 0, 1],
  ['ガリバートンネル', 0, 0, -1, 2],
  ['石ころぼうし', -1, 0, 2, 0]
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