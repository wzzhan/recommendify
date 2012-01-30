module Recommendify

  DEFAULT_MAX_NEIGHBORS = 50

  @@redis = nil

  def self.redis=(redis)
    @@redis = redis
  end

  def self.redis
    return @@redis unless @@redis.nil?
    raise "redis not configured! - Recommendify.redis = Redis.new"
  end

end