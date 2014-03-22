json.array!(@qupons) do |qupon|
  json.extract! qupon, :id, :name, :date, :image, :quponflag, :discription
  json.url qupon_url(qupon, format: :json)
end
