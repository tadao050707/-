FactoryBot.define do
  factory :task do
    name { 'task_name' }
    content { 'task_content' }
    deadline { DateTime.now }
    status { 'task_status' }
  end
end