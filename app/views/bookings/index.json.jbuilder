json.array!(@bookings) do |b|
  json.id(b.id)
  json.start(b.start)
  json.end(b.stop)
  json.url(edit_booking_path(b))
  json.title(b.to_s)
end
