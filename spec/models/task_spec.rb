require 'rails_helper'

RSpec.describe Task, type: :model do
    describe 'タスクモデル機能', type: :model do
      describe 'バリデーションのテスト' do
        context 'タスクの名前が空の場合' do
          it 'バリデーションにひっかる' do
            task = Task.new(
            name: nil,
            content: 'task_content',
            )
            task.valid?
            expect(task.errors[:name]).to include("can't be blank")
          end
        end
        context 'タスクの詳細が空の場合' do
          it 'バリデーションにひっかる' do
            task = Task.new(
            name: 'task_name',
            content: nil,
            )
            task.valid?
            expect(task.errors[:content]).to include("can't be blank")
          end
        end
        context 'タスクのタイトルと詳細に内容が記載されている場合' do
          it 'バリデーションが通る' do
            task = Task.new(
              name: 'task_name',
              content: 'task_content',
              )
              expect(task).to be_valid
          end
        end
      end
  end
end
