# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

# migrateのタスクをフックする
Rake::Task['db:migrate'].enhance do
  Rake::Task[:after_migrate].invoke if Rails.env.development?
end

# migrateの後のタスク
task after_migrate: :environment do
  Rake::Task[:create_erd].invoke
end

# ER図を作成
task create_erd: :environment do
  sh 'bin/rake erd sort=false title=sdvx_tools filename=db/erd filetype=png'
end
