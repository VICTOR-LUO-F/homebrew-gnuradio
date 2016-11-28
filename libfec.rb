require "formula"

class Libfec < Formula
  homepage "http://www.ka9q.net/code/fec/"
  url "http://www.ka9q.net/code/fec/fec-3.0.1.tar.bz2"
  sha256 "4201f6c80fe3fb283806bf41a74ea3476d783081e7cd6d09f12406894e6f567c"

  depends_on 'gcc'

  patch :p1 do
    url "http://lodge.glasgownet.com/bitsnbobs/kg_fec-3.0.1.patch"
    sha256 "8b63e6db3d2d1f0e3861181dc6eb41e8076147e938bd226ee6a238c4b4a4bed7"
  end

  def install
    system "./configure", "--target=x86_64-apple-darwin13.3.0",
                          "--prefix=#{prefix}", "--mandir=#{man}"
    system "make", "install"
  end
end
