class DashboardsController < ApplicationController
    # require 'twitter'
    # require 'json'
    # require 'typhoeus'

    def show
    end

    # def home
    #     bearer_token = ENV["BEARER_TOKEN"]
    #     endpoint_url = "https://api.twitter.com/2/users/:id/tweets"
    #     id = 618634419
    #     endpoint_url = endpoint_url.gsub(':id',id.to_s())
    #     query_params = {
    #         "max_results" => 100,
    #         # "start_time" => "2020-07-01T00:00:00Z",
    #         # "end_time" => "2020-07-02T18:00:00Z",
    #         "expansions" => "attachments.poll_ids,attachments.media_keys,author_id",
    #         "tweet.fields" => "attachments,author_id,conversation_id,created_at,entities,id,lang",
    #         "user.fields" => "description"
    #         # "media.fields" => "url", 
    #         # "place.fields" => "country_code",
    #         # "poll.fields" => "options"
    #     }
    #     options = {
    #         method: 'get',
    #         headers: {
    #         "User-Agent" => "v2RubyExampleCode",
    #         "Authorization" => "Bearer #{bearer_token}"
    #         },
    #         params: query_params
    #     }

    #     request = Typhoeus::Request.new(endpoint_url, options)
    #     response = request.run
    #     @tweets = JSON.pretty_generate(JSON.parse(response.body))
    #     # return response
    # end
end