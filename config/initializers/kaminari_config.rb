Kaminari.configure do |config|
  # config.default_per_page = 10
  # config.max_per_page = nil
  # config.window = 4
  # config.outer_window = 0
  # config.left = 0
  # config.right = 0
  # config.page_method_name = :page
  # config.param_name = :page
end
# app/models/micropost.rb

class Micropost < ActiveRecord::Base
  paginates_per 5  # 1ページあたり5項目表示
end
