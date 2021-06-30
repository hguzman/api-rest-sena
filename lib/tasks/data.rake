namespace :data do
  desc "Task that update all field state"
  task actualizaestado: :environment do
    User.update_all(estado: true)
    
  end

end
