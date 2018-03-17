json.array!(@events) do |e|
  json.id(e.id)
  json.title(e.title)
  json.start(e.start)
  json.end(e.stop)
end
