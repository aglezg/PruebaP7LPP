task :default => :spec

desc "Ejecutar las espectativas de la clase Matrix"
task :spec do
  sh "rspec -I. spec/matrix_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
    sh "rspec -I. spec/matrix_spec.rb --format documentation"
end