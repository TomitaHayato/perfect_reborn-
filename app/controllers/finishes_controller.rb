class FinishesController < ApplicationController
  def index
    max_point = session[:status_points].values.max
    max_status_array = []

    session[:status_points].each do |status, point|
      max_status_array.push(status.to_s) if point == max_point
    end

    animal_name = users_animal_name(max_status_array)
    @animal = Animal.find_by(name: animal_name)
  end

  private

  # max_status_setの内容によって動物名を判定
  def users_animal_name(max_status_array)
    animal_name = case max_status_array
                  when ['love']
                    'イヌ'
                  when ['diligence']
                    '花'
                  when ['freedom']
                    'コアラ'
                  when ['adventure']
                    'ツバメ'
                  when ['love', 'diligence']
                    'ミツバチ'
                  when ['love', 'freedom']
                    'ネコ'
                  when ['love', 'adventure']
                    'イルカ'
                  when ['diligence', 'freedom']
                    '木'
                  when ['diligence', 'adventure']
                    '蝶'
                  when ['freedom', 'adventure']
                    'ハト'
                  when ['love', 'diligence', 'freedom']
                    'シロイルカ'
                  when ['diligence', 'freedom', 'adventure']
                    'アザラシ'
                  when ['love', 'freedom', 'adventure']
                    'オランウータン'
                  when ['love', 'diligence', 'adventure']
                    'ゾウ'
                  when ['love', 'diligence', 'freedom', 'adventure']
                    '人間'
                  end
    p animal_name
    animal_name
  end
end
