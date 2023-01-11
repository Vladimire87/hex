# frozen_string_literal: true

require 'digest'

puts 'Enter a word or phrase to encrypt:'
input = gets.chomp

puts 'Select an encryption method:'
puts '1. MD5'
puts '2. SHA1'
encryption_method = gets.chomp

case encryption_method
when '1'
  encryption = Digest::MD5.hexdigest(input)
  puts "Encryption Result: #{encryption}"
when '2'
  encryption = Digest::SHA256.hexdigest(input)
  puts "Encryption Result: #{encryption}"
else
  puts 'Invalid encryption method selected.'
end
