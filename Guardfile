engine_path = Dir.glob('vendor/engines/*').first
puts engine_path
guard 'rspec', :version => 2, :spec_paths => ['spec', engine_path + '/spec'] do
  watch('spec/spec_helper.rb')  { engine_path + '/spec' }
end
