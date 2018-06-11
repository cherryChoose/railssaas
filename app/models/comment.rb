class Comment < ActiveRecord::Base
  # 典型的用法在many-to-one时，当many端发生改变时，更新one端的updated_at时间。
  belongs_to :article, touch: true
  format_url :website
end
