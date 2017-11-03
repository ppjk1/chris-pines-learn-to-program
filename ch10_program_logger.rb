def log description, &block
  puts "Beginning \"#{description}\"..."
  puts "...\"#{description}\" finished, returning: " + block.call.inspect
end

log "outer block" do

  log "some little block" do
    5
  end

  log "yet another block" do
    "I like Thai food!"
  end

  false
end
