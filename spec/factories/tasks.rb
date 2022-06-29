FactoryBot.define do

  factory :task do
    name { 'タスク名１' }
    content { '内容1' }
    deadline { DateTime.now }
    status {'completed'}
    priority {'high'}
  end

  factory :second_task, class: Task do
    name { 'タスク名2' }
    content { '内容2' }
    deadline { DateTime.now }
    status {'in_progress'}
    priority {'middle'}
  end

  factory :third_task, class: Task do
    name { 'タスク名3' }
    content { '内容3' }
    deadline { DateTime.now }
    status {'not_started_yet'}
    priority {'low'}
  end
end