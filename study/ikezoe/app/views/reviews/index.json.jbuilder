json.array!(@reviews) do |review|
  json.extract! review, :id, :title, :comment, :value_good, :value_bad, :value_book, :enabled, :date, :book_id, :deleted
  json.url review_url(review, format: :json)
end
