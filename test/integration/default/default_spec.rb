location = File.join(ENV['LOCALAPPDATA'] || '/tmp', 'machine')
location.sub!('appveyor', ENV['machine_user'])

describe directory(location) do
  it { should exist }
end
