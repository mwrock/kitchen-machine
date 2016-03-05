location = File.join(ENV['LOCALAPPDATA'] || '/tmp', 'machine')

describe directory(location) do
  it { should exist }
end
