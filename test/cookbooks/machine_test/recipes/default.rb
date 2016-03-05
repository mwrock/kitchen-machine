location = File.join(ENV['TEMP'] || '/tmp', 'machine')

directory location do
  action [:delete, :create]
end
