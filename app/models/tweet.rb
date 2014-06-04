class Tweet < ActiveRecord::Base
	belongs_to :user

	def self.tuesday_tweets
		Tweet.where(:created_at => "Tuesday")
	end

	def self.piglatin_tweets
		Tweet.all.map do |tweet|
			tweet.piglatinify
		end
		# Return an array of piglatinified tweets
	end

	# Tweet.piglatin_tweets

	def piglatinify
		# hello
		# ello + h + ay
		self.body = self.body[1..-1] + self.body[0] + "ay"
		self
	end

	# tweet = Tweet.first
	# tweet.piglatifiny
end
