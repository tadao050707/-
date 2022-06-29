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
    describe '検索機能' do
      # 必要に応じて、テストデータの内容を変更して構わない
      let!(:task) { FactoryBot.create(:task, name: 'task') }
      let!(:second_task) { FactoryBot.create(:second_task, name: "sample") }
      context 'scopeメソッドでタイトルのあいまい検索をした場合' do
        it "検索キーワードを含むタスクが絞り込まれる" do
          # title_seachはscopeで提示したタイトル検索用メソッドである。メソッド名は任意で構わない。
          expect(Task.name_search('task')).to include(task)
          expect(Task.name_search('task')).not_to include(second_task)
          expect(Task.name_search('task').count).to eq 1
        end
      end
      context 'scopeメソッドでステータス検索をした場合' do
        it "ステータスに完全一致するタスクが絞り込まれる" do
          # ここに内容を記載する
          expect(Task.status_search('task')).to include(task)
          expect(Task.status_search('task')).not_to include(second_task)
          expect(Task.status_search('task').count).to eq 1
        end
      end
      context 'scopeメソッドでタイトルのあいまい検索とステータス検索をした場合' do
        it "検索キーワードをタイトルに含み、かつステータスに完全一致するタスク絞り込まれる" do
          # ここに内容を記載する
          expect(Task.name_search('task').status_search('task')).to include(task)
          expect(Task.name_search('task').status_search('task')).not_to include(second_task)
          expect(Task.name_search('task').status_search('task').count).to eq 1
        end
      end
    end
  end
end
