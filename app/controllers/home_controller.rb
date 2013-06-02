class HomeController < ApplicationController
  require 'google/api_client'
  require 'client_builder'
  def index
    if (user_signed_in? )
      client = ClientBuilder.get_client(current_user)
      service = client.discovered_api('calendar', 'v3')
      # result = client.execute(:api_method => service.calendar_list.list)
      # @calendars = result.data

      # event_results = client.execute(:api_method => service.events.list,
      #                                :parameters => {'calendarId' => 'primary'})
      # @events = event_results.data
    end
  def edit
    if user_signed_in?
    	@user = current_user
    end
  end
  end
end