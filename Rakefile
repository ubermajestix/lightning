# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'lightning'

task :default => 'spec:run'

PROJ.name = 'lightning'
PROJ.authors = 'Tyler Montgomery'
PROJ.email = 'tyler.a.montgomery@gmail.com'
PROJ.url = 'http://github.com/ubermajestix/lightning'
PROJ.version = Lightning::VERSION
PROJ.rubyforge.name = "lightning"
PROJ.summary = "boom"
PROJ.spec.opts << '--color'

# EOF
