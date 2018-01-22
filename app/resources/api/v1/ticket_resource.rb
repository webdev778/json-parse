class Api::V1::TicketResource < JSONAPI::Resource
  attributes :request_number,
  :sequence_number,
  :request_type,
  :response_due_date_time,
  :sacode1,
  :sacode2,
  :company_name,
  :address,
  :crew_on_site,
  :well_know_text,
  :created_at, :updated_at
end
