# ${license-info}
# ${developer-info}
# ${author-info}
# ${build-info}

unique template components/${project.artifactId}/config;

include 'components/${project.artifactId}/schema';

# Set prefix to root of component configuration.
prefix '/software/components/${project.artifactId}';

'version' ?= '${no-snapshot-version}';

'dependencies/pre' ?= list("spma");
'active' 		?= true;
'dispatch' 		?= true;
'register_change' 	?= list("/system/monitoring");

# Package to install
"/software/packages" = pkg_repl("ncm-${project.artifactId}", "${no-snapshot-version}-${rpm.release}", "noarch");
