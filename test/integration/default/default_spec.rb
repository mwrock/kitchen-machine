location = File.join(ENV['TEMP'] || '/tmp', 'machine')

describe directory(location) do
  it { should exist }
end
