# -*- encoding: utf-8 -*-

require 'bundler/gem_tasks'
require 'rubocop/rake_task'

RuboCop::RakeTask.new(:style) do |task|
  task.options << '--display-cop-names'
end

task default: [:style]
