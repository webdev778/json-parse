class Api::V1::TicketsController < ApplicationController

  def parse_and_persist
    # save json data to db
    ticket = Ticket.new do |t|
      t.request_number = params["RequestNumber"].to_s
      t.sequence_number = params["SequenceNumber"].to_i
      t.request_type = params["RequestType"].to_s
      t.response_due_date_time = params["DateTimes"]["ResponseDueDateTime"].to_datetime
      t.sacode1 = params["ServiceArea"]["PrimaryServiceAreaCode"]["SACode"].to_s
      t.sacode2 = params["ServiceArea"]["AdditionalServiceAreaCodes"]["SACode"].to_s
      t.company_name = params["Excavator"]["CompanyName"].to_s
      t.address = params["Excavator"]["Address"].to_s + ", " + params["Excavator"]["City"].to_s 
                + ", " + params["Excavator"]["State"].to_s + ", " + params["Excavator"]["Zip"].to_s
      t.crew_on_site = params["Excavator"]["CrewOnSite"].to_s
      t.well_know_text = params["ExcavationInfo"]["DigsiteInfo"]["WellKnownText"].to_s
    end

    ticket.save
  end
end
