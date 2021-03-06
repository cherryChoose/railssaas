class Article < ActiveRecord::Base
  belongs_to :author
  has_many :comments
  scope :published, -> { where("published_at < ?", Time.zone.now) }

  after_commit :flush_cache
  def flush_cache
   	Rails.cache.delete([self.class.name, id])
    Rails.cache.delete([self.class.name, "published"])
   end	
  
  def self.cached_find(id)
    Rails.cache.fetch([name, id], expires_in: 5.minutes ) {find(id)}
  end

  def self.cached_published
    Rails.cache.fetch([self, 'published'], expires_in: 5.minutes) { published }
  end  

  def cached_comments_count
  	Rails.cache.fetch([self, 'comments_count']) { comments.size }
  end

  def cached_comments
    Rails.cache.fetch([self, "comments"]) { comments.to_a }
  end

  def cached_article
  	Rails.cache.fetch([self.class.name, id]) { find(id) }
  end

  def cached_author
  	Author.cached_find(author_id)
  end	
end
