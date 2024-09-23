# DO NOT EDIT THIS FILE - See: https://jetty.org/docs/

[description]
Enables Experimental Zstandard algorithm for CompressionHandler server wide compression.

[tags]
server
handler
compression
experimental

[depend]
server
compression-api
compression

[files]
maven://com.github.luben/zstd-jni/${zstd-jni.version}|lib/compression/zstd-jni-${zstd-jni.version}.jar

[lib]
lib/compression/zstd-jni-${zstd-jni.version}.jar

[xml]
etc/jetty-compression-zstandard.xml

[ini-template]
## Minimum content length after which brotli is enabled
# jetty.zstandard.minCompressSize=32

## Buffer Size for Decoder
# If unspecified, this default comes from zstd-jni's integration with the zstd libs.
# jetty.zstandard.decoder.bufferSize=128000

## Enable/Disable Magicless frames for Decoder
# Note: No browser zstandard implementations should be generating Magicless frames.
# Leave at false for maximum compatibility with known browsers.
# jetty.zstandard.decoder.magicless=false

## Buffer Size for Encoder
# If unspecified, this default comes from zstd-jni's integration with the zstd libs.
# jetty.zstandard.encoder.bufferSize=128000

## Compression Level for Encoder
# If unspecified, this default comes from the zstd-jni's integration with the zstd libs.
# valid values from 1 to 19
# jetty.zstandard.encoder.compressionLevel=3

## Strategy for Encoder
# If unspecified, this default comes from the zstd-jni's integration with the zstd libs.
# See https://facebook.github.io/zstd/zstd_manual.html#Chapter5
# valid values from 1 to 9
# Leave at -1 for maximum compatibility with known browsers.
# jetty.zstandard.encoder.strategy=-1

## Enable/Disable Magicless frames for Encoder
# Note: browser zstandard implementations require this to be false.
# jetty.zstandard.encoder.magicless=false

# Enable/Disable compression checksums
# Note: browser zstandard implementations requires this to be false.
# jetty.zstandard.encoder.checksum=false

[license]
Zstd-jni: JNI bindings to Zstd Library
Copyright (c) 2015-present, Luben Karavelov/ All rights reserved.
BSD License
https://github.com/luben/zstd-jni/blob/master/LICENSE

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice, this
  list of conditions and the following disclaimer in the documentation and/or
  other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.