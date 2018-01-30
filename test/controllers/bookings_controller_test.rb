require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    bookings(:first)
    get(bookings_url)
    assert_response(:success)
  end

  test 'should get new' do
    sign_in_as(users(:josefine))
    get(new_booking_url)
    assert_response(:success)
  end

  test 'should create booking' do
    user = users(:josefine)
    sign_in_as(user)
    assert_difference('Booking.count', 1) do
      post(bookings_url, params: { booking: { start: 4.hours.from_now,
                                              stop: 6.hours.from_now } })
    end

    assert_redirected_to(bookings_url)
    assert_equal(Booking.last.user, user)
  end

  test 'should get edit' do
    booking = bookings(:first)
    sign_in_as(booking.user)
    get(edit_booking_url(booking))
    assert_response(:success)
  end

  test 'should update booking' do
    booking = bookings(:first)
    sign_in_as(booking.user)
    start = Time.current
    patch(booking_url(booking), params: { booking: { start: start } })
    assert_redirected_to(bookings_url)
    booking.reload
    assert_in_delta(booking.start, start, 1.second)
  end

  test 'should destroy booking' do
    booking = bookings(:first)
    sign_in_as(booking.user)
    assert_difference('Booking.count', -1) do
      delete(booking_url(booking))
    end

    assert_redirected_to(bookings_url)
  end
end
