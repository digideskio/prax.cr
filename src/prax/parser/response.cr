require "./common"

module Prax
  class Parser
    class Response
      include Common

      getter :http_version, :code, :status, :headers

      def initialize(@http_version, @code, @status)
        @headers = [] of Header
      end

      def to_s
        "#{http_version} #{code} #{status}\r\n" +
          headers.map(&.to_s).join("\r\n") +
          "\r\n\r\n"
      end
    end
  end
end
