json.array!(@reward_categories) do |reward_category|
  json.extract! reward_category, :id, :name
  json.url reward_category_url(reward_category, format: :json)
end
