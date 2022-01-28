#!/usr/bin/env ruby
require_relative 'app'

def main
  app = Library.new
  app.welcome
end

main
