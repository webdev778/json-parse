json.extract! ticket, :id, :request_number, :sequence_number, :request_type, :response_due_date_time, :sacode1, :sacode2, :company_name, :address, :crew_on_site, :well_know_text, :created_at, :updated_at, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
