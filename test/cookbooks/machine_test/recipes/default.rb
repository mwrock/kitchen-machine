location = File.join(ENV['LOCALAPPDATA'] || '/tmp', 'machine')
location.sub!('appveyor', ENV['machine_user'])

directory location do
  action [:delete, :create]
end
