class ProtoDebug < Formula
  desc "Run proto-debug along your *.proto files and convert proto wire format to JSON"
  homepage "https://github.com/RainbowDashy"
  url "https://gist.githubusercontent.com/RainbowDashy/4c80b11abbe4e5663ee9031598bfd8ec/raw/e0743f6740cc6fbff718a87662f6485bae42d156/proto-debug"
  version "0.0.1"
  sha256 "2fe8544975da7460df2343d1c6bded4bf4d5b53ee136c8bbcc0f6f203500f003"
  license "MIT"

  depends_on "buf"
  depends_on "fzf"
  depends_on "jq"

  def install
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    bin.install "proto-debug" => "proto-debug"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test proto-debug`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "bin/proto-debug"
  end
end
