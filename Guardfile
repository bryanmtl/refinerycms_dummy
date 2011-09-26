guard 'spork', :cucumber_env => { 'RAILS_ENV' => 'test' }, :rspec_env => { 'RAILS_ENV' => 'test' } do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.+\.rb$})
  watch(%r{^config/initializers/.+\.rb$})
  watch('spec/spec_helper.rb')
  watch(%r{^spec/support/.+\.rb$})
end

engine_path = Dir.glob('vendor/engines/*').first
puts engine_path
guard 'rspec', :version => 2, :spec_paths => ['spec', engine_path + '/spec'] do
  watch('spec/spec_helper.rb')  { engine_path + '/spec' }
end

