#hey there
=begin
use_bpm 115
use_synth :piano
a=0.5
define :bi do|w, x, y, z|
  play x
  sleep a
  play y
  sleep a
  play y
  sleep a
  play z
end
live_loop :began do
  4.times do
    bi :e, :g, :e, :g
  end
  stop
end
=end

use_bpm 115
use_synth :piano
i = 0
notes = [:e, :g]
live_loop :bi do
  8.times do
    play notes[i]
    sleep 0.5
    i = i + 1
  end
  i = 0
end

