---@meta

---Convert between streams of DFPWM audio data and a list of amplitudes.
---
---DFPWM (Dynamic Filter Pulse Width Modulation) is an audio codec designed by GreaseMonkey.
---It's a relatively compact format compared to raw PCM data, only using 1 bit per sample,
---but is simple enough to encode and decode in real time.
---
---Typically DFPWM audio is read from the filesystem or a a web request as a string,
---and converted a format suitable for `speaker.playAudio`.
---
---DFPWM is not a popular file format and so standard audio processing tools
---may not have an option to export to it. Instead, you can convert audio files
---online using [music.madefor.cc](https://music.madefor.cc/), the [LionRay Wav Converter](https://github.com/gamax92/LionRay/) Java application or
---[FFmpeg](https://ffmpeg.org/) 5.1 or later.
---
---<h2 align="center"><a href="https://tweaked.cc/library/cc.audio.dfpwm.html">Official Documentation</a></h2>
local dfpwm = {}


---Create a new encoder for converting PCM audio data into DFPWM.
---
---The returned encoder is itself a function. This function accepts a
---table of amplitude data between -128 and 127 and returns the encoded DFPWM data.
---
---Encoders have lots of internal state which tracks the state of the current stream.
---If you reuse an encoder for multiple streams, or use different encoders for the same
---stream, the resulting audio may not sound correct.
---@return fun(pcm: number[]): string encoder The encoder function.
function dfpwm.make_encoder() end


---Create a new decoder for converting DFPWM into PCM audio data.
---
---The returned decoder is itself a function. This function accepts a
---string and returns a table of amplitudes, each value between -128 and 127.
---
---Decoders have lots of internal state which tracks the state of the current stream.
---If you reuse an decoder for multiple streams, or use different decoders for the same
---stream, the resulting audio may not sound correct.
---@return fun(dfpwm: string): number[] decoder The decoder function.
function dfpwm.make_decoder() end


---A convenience function for encoding a complete file of audio at once.
---
---This should only be used for complete pieces of audio. If you are writing
---multiple chunks to the same place, you should use an encoder returned by
---`make_encoder` instead.
---@param pcm number[] The table of amplitude data.
---@return string encoded The encoded DFPWM data.
function dfpwm.encode(pcm) end


---A convenience function for decoding a complete file of audio at once.
---
---This should only be used for short files. For larger files, one should read
---the file in chunks and process it using make_decoder.
---@param input string The DFPWM data to convert.
---@return number[] pcm The produced amplitude data.
function dfpwm.decode(input) end

return dfpwm