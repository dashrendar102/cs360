json.array!(@violations) do |violation|
  json.extract! violation, :plateNum, :plateState, :violationType, :picture, :date
  json.url violation_url(violation, format: :json)
end
