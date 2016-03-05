location = File.join(ENV['LOCALAPPDATA'] || '/tmp', 'machine')

directory location do
  action [:delete, :create]
end
