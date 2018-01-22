require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
      post tickets_url, params: { ticket: { address: @ticket.address, company_name: @ticket.company_name, created_at: @ticket.created_at, crew_on_site: @ticket.crew_on_site, request_number: @ticket.request_number, request_type: @ticket.request_type, response_due_date_time: @ticket.response_due_date_time, sacode1: @ticket.sacode1, sacode2: @ticket.sacode2, sequence_number: @ticket.sequence_number, updated_at: @ticket.updated_at, well_know_text: @ticket.well_know_text } }
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { address: @ticket.address, company_name: @ticket.company_name, created_at: @ticket.created_at, crew_on_site: @ticket.crew_on_site, request_number: @ticket.request_number, request_type: @ticket.request_type, response_due_date_time: @ticket.response_due_date_time, sacode1: @ticket.sacode1, sacode2: @ticket.sacode2, sequence_number: @ticket.sequence_number, updated_at: @ticket.updated_at, well_know_text: @ticket.well_know_text } }
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
