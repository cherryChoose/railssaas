class Author < ActiveRecord::Base
  has_many :articles

  after_commit :flush_cache
  
  def self.cached_find(id)
    Rails.cache.fetch([name, id], expires_in: 5.minutes) { find(id) }
  end
  
  def flush_cache
    Rails.cache.delete([self.class.name, id])
  end
end
