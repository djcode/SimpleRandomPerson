# SimpleRandomPerson Ruby Gem

## Welcome

This gem generates a random person leveraging lists obtained from a few public sources.
When retrieving a value from the lists, it randomly moves the pointer the file and picks the first full entry found, so no matter how big the list gets, it should stay fast and memory efficient.
Please note, that this gem is NOT designed for secure, random, password generation, just simple password-looking text string that an average person might use.

## Installation

```
gem build ./simplerandomperson.gemspec
gem install ./simplerandomperson-0.0.1.gem
```

## Usage

Quickly generate a random person
```
require 'simplerandomperson'

person = SimpleRandomPerson.new

person.first_name
=> "Laurine"

person.last_name
=> "Buono"

person.domain
=> "brighttalk.com"

person.email
=> "lbuono@brighttalk.com"

person.password
=> "UfxpbATEmP"
```

People are generated based off a random seed, so supplying a seed _should_ generate the same person.
This won't be guaranteed though across Ruby versions/ Gem versions, etc. but an attempt to maintain this will be made.
The goal of the project is a random person on every initialization, so the seed should be random. 

```
person1 = SimpleRandomPerson.new 1
person1.first_name
=> "Rolf"
person1.last_name
=> "Pavelich"
person1.email
=> "r-pavelich@kickstarter.com"
person1.password
=> "B5F0G1C7jy"

person2 = SimpleRandomPerson.new 1
person1.first_name
=> "Rolf"
person2.last_name
=> "Pavelich"
person2.email
=> "r-pavelich@kickstarter.com"
person2.password
=> "B5F0G1C7jy"
```

## Sources

First and last names from: https://github.com/smashew/NameDatabases/tree/master/NamesDatabases
Domains from (with some manipulation): https://github.com/gupsydaisys/website-for-company-name

## Future ideas

* Ability to choose your own lists
* More random data (DOBs, SSNs, Sexes, Company Names, Physical Addresses)
* Bigger datasets like: https://github.com/fgont/domain-list
* If you need more control over the names generated, https://github.com/yb66/RandomPerson might be for you!
  You could combine these 2 gems by setting the first_name and last_name attributes, and just use this gem for domains, emails, passwords.

