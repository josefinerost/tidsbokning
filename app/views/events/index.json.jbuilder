json.array!(@events) do |e|
  json.id(e.id)
  json.title(e.title)
  json.start(e.start)
  json.end(e.stop)
  json.url(event_path(e))
end
