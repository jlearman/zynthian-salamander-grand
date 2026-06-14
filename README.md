# Accurate Salamander Grand for Zynthian

This is a high-quality sampleset from a Yamaha C5 with MIDI control,
allowing automated sampling.  Sampling was done by Alexander Holm in 2010.
It has every third note sampled and 16 velocity layers.  Subsequently the
Accurate Salamander Grand project by C Yamauchi perfected the tuning and
dynamic response (see link above.)

This sampleset is minimized to reduce filespace footprint and minimize the
number of voices used, suitable for use on Zynthian, but not limited to it.
All note samples were retained, but release samples and resonance samples
were removed.  More details on changes below.

It has been tested using Sforzando and Sfizz sample players.

## Features and controls

- Half-pedaling is supported.  If your sustain pedal is on/off, you can still
  get "repedaling," reducing the volume with a quick up-down of the pedal,
  and lower notes are damped less just as on an acoustic piano.
- Sustain pedal noise is supported.  This is the quiet sound made when you push
  the pedal down, allowing the harp to resonate quietly, and the sound of the
  dampers resting on the strings when you release the pedal.
  - Use CC21 to enable or disable sustain pedal noise.  Turning it off saves one voice.
  - Use CC22 to control sustain pedal noise volume.  The default is 25% (CC value of 32.)

## Origin and Changes

This sampleset was derived from the 6.2beta2 version of the Salamander Grand
by the Accurate Salamander Grand Project at
https://www.ir.isas.jaxa.jp/~cyamauch/AccurateSalamander/ .
See README.cyamauch.txt for details, many of which don't apply to this sampleset.

That sampleset was derived from Alexander Holm's Salamander Grand;
see README.orig.txt for details.

The following changes were made:

- This sampleset is based on the "minimal" sampleset of Accurate Grand, which doesn't
  include release samples, hammer noise, resonance samples, and pedal noise. But pedal
  noise was added back.
- Files were converted from 24 to 16 bits.  Since these samples are normalized,
  this loses very little fidelity and saves considerable space, especially after FLAC
  data compression.
- Files were converted from wav format to FLAC lossless, saving considerable space.
- Release times were adjusted to be shorter with higher notes, as on a real piano.
- Half-pedaling support was enabled.

The sampleset size was reduced from 1.9G to 200M.

This sampleset is CC-BY, due to Alexander Holm's original license.
Of course, there are no restrictions or requirements for music made
using the sampleset.

Jeff Learman
June 2026
