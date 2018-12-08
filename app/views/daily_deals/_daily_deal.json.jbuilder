json.extract! daily_deal, :id, :DealerID, :DealerName, :DealerCategory, :IsDealerFavorite?, :DealerTargetUrl, :created_at, :updated_at
json.url daily_deal_url(daily_deal, format: :json)
