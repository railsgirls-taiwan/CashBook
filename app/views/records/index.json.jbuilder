json.array!(@records) do |record|
  json.extract! record, :title, :amount, :date
  json.url record_url(record, format: :json)
end
