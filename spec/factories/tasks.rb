FactoryBot.define do

  factory :task do
    name { 'タスク名１' }
    content { '内容1' }
    deadline { DateTime.now }
    status {'完了'}
    priority {'高'}
  end

  factory :second_task, class: Task do
    name { 'タスク名2' }
    content { '内容2' }
    deadline { DateTime.now }
    status {'進行中'}
    priority {'中'}
  end

  factory :third_task, class: Task do
    name { 'タスク名3' }
    content { '内容3' }
    deadline { DateTime.now }
    status {'未着手'}
    priority {'低'}
  end
end