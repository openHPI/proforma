# frozen_string_literal: true

FactoryBot.define do
  factory :test, class: Proforma::Test do
    sequence(:files) { |n| build_list(:task_file, 1, id: "test_file_#{n}") }
    sequence(:id) { |n| "test_#{n}" }
    title { 'title' }
    test_type { 'test_type' }

    trait(:no_file) do
      files {}
    end

    trait(:populated) do
      title { 'title' }
      description { 'description' }
      internal_description { 'internal_description' }
      files { build_list(:task_file, 1, :populated, :small_content, :text) }
      meta_data { {meta: 'data'} }
    end
  end
end
