require "ruboty/fizzbuzz/actions/fizzbuzz"

module Ruboty
  module Handlers
    class Fizzbuzz < Base # Ruboty::Handlers::Baseを継承
      on /fizzbuzz (?<number>.*?)\z/, name: 'fizzbuzz', description: 'output fizzbuzz result'

      def fizzbuzz(message)
        Ruboty::Fizzbuzz::Actions::Fizzbuzz.new(message).call
      end
    end
  end
end