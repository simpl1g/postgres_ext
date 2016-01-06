gdep = Gem::Dependency.new('activerecord', '>= 4.2.0')
ar_version_cutoff = gdep.matching_specs.sort_by(&:version).last

require 'active_record/relation'
require 'postgres_ext/active_record/relation/query_methods'

if ar_version_cutoff
  require 'postgres_ext/active_record/relation/predicate_builder/array_handler'
else
  require 'postgres_ext/active_record/relation/predicate_builder'
end

