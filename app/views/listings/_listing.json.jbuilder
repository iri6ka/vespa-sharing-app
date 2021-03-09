json.extract! listing, :id, :name, :price, :category_id, :description, :condition, :insurance, :images, :available, :u, :created_at, :updated_at
json.url listing_url(listing, format: :json)
