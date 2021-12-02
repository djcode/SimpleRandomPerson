# frozen_string_literal: true

# Generate a random person
class SimpleRandomPerson
  attr_accessor :password_characters, :password_length, :email_separator, :first_name, :last_name, :domain, :password

  def initialize(seed = Random.new_seed)
    @seed = seed
    @random = Random.new(seed)
    @first_name = randomize_first_name
    @last_name = randomize_last_name
    @domain = randomize_domain
    @email_first_name_initial = false
    @email_separator = ['.', '-', ''][@random.rand(3)]
    @password_characters = [('0'..'9').to_a, ('A'..'Z').to_a, ('a'..'z').to_a].flatten
    @password_length = 10
    @password = randomize_password
  end

  def randomize_first_name
    path = File.join(__dir__, 'data/first_names.txt')
    sample = IO.binread(path, 50, @random.rand(File.size(path)))
    @first_name = /\n(.*)\n/.match(sample)[1].to_s.chomp
    @first_name
  end

  def randomize_last_name
    path = File.join(__dir__, 'data/last_names.txt')
    sample = IO.binread(path, 50, @random.rand(File.size(path)))
    @last_name = /\n(.*)\n/.match(sample)[1].to_s.chomp
    @last_name
  end

  def randomize_domain
    path = File.join(__dir__, 'data/domains.txt')
    sample = IO.binread(path, 80, @random.rand(File.size(path)))
    @domain = /\n(.*)\n/.match(sample)[1].to_s.chomp
    @domain
  end

  def randomize_password
    @password = Array.new(@password_length) { @password_characters[@random.rand(@password_characters.length)] }.join
    @password
  end

  def email
    first = @email_first_name_initial ? @first_name : @first_name[0]
    [first, @email_separator, @last_name, '@', @domain].join.downcase
  end
end
