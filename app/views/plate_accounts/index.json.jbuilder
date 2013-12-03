json.array!(@plate_accounts) do |plate_account|
  json.extract! plate_account, :state, :plate_num, :email, :name
  json.url plate_account_url(plate_account, format: :json)
end
