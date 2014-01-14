json.array!(@orders) do |order|
  json.extract! order, :id, :opac_id, :category_id, :value_book, :title, :comment
  json.url order_url(order, format: :json)
end
