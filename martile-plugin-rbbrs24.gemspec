Gem::Specification.new do |s|
  s.name = 'martile-plugin-rbbrs24'
  s.version = '0.1.0'
  s.summary = 'A Martile plugin to generate an HTML form from the Rbbrs24 gem.'
  s.authors = ['James Robertson']
  s.files = Dir["lib/martile-plugin-rbbrs24.rb"]
  s.add_runtime_dependency('rbbrs24', '~> 0.1', '>=0.1.1')
  s.signing_key = '../privatekeys/martile-plugin-rbbrs24.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/martile-plugin-rbbrs24'
end
