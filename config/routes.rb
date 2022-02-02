Rails.application.routes.draw do
  get "/foods/:food" => "foods#show"
end
