require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = Booking.create(start: 2.hours.from_now, stop: 4.hours.from_now)
  end

  test 'should get index' do
    get(bookings_url)
    assert_response(:success)
  end

  test 'should get new' do
    get(new_booking_url)
    assert_response(:success)
  end

  test 'should create booking' do
    assert_difference('Booking.count') do
      post(bookings_url,
           params: {
             booking: { start: @booking.start, stop: @booking.stop }
           })
    end

    assert_redirected_to(bookings_url)
  end

  test 'should get edit' do
    get(edit_booking_url(@booking))
    assert_response(:success)
  end

  test 'should update booking' do
    patch(booking_url(@booking),
          params: {
            booking: { start: @booking.start, stop: @booking.stop }
          })
    assert_redirected_to(bookings_url)
  end

  test 'should destroy booking' do
    assert_difference('Booking.count', -1) do
      delete(booking_url(@booking))
    end

    assert_redirected_to(bookings_url)
  end
end
