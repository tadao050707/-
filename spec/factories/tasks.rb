FactoryBot.define do

  factory :task do
    name { 'Factoryで作ったデフォルトのタイトル１' }
    content { 'Factoryで作ったデフォルトのコンテント１' }
    deadline { DateTime.now }
    status {'completed'}
    priority {'high'}
  end

  factory :second_task, class: Task do
    name { 'Factoryで作ったデフォルトのタイトル２' }
    content { 'Factoryで作ったデフォルトのコンテント２' }
    deadline { DateTime.tomorrow }
    status {'not_started_yet'}
    priority {'middle'}
  end

  factory :third_task, class: Task do
    name { 'Factoryで作ったデフォルトのタイトル２' }
    content { 'Factoryで作ったデフォルトのコンテント２' }
    # deadline { DateTime.tomorrow }
    status {'not_started_yet'}
    priority {'row'}
  end
end