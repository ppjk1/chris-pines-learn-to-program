$nestingDepth = -1

def log description, &block
  $nestingDepth += 1
  indent = $nestingDepth * 3
  puts " " * indent + "Beginning \"#{description}\"..."
  return_value = block.call
  puts " " * indent + "...\"#{description}\" finished, returning: " +
    return_value.to_s
  $nestingDepth -= 1
end

log "outer block" do
  log "some little block" do
    log "teeny-tiny block" do
      "lots of love"
    end
    42
  end
  log "yet another block" do
    "I love Indian food!"
  end
  true
end
