json.array!(@books) do |book|
  json.extract! book, :id, :title, :auther, :outline, :isbn, :opac_id, :value
  json.url book_url(book, format: :json)
end
