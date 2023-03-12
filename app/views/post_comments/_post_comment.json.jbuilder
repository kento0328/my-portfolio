json.extract! post_comment, :id, :post_id, :post_comment, :user_id, :created_at, :updated_at
json.url post_comment_url(post_comment, format: :json)
