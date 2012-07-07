# ${license-info}
# ${developer-info}
# ${author-info}


unique template components/interactivelimits/config-rpm;

include { 'components/interactivelimits/schema' };
include { 'pan/functions' };

# Package to install.
"/software/packages"=pkg_repl("ncm-interactivelimits","1.1.1-1","noarch");

# standard component settings
"/software/components/interactivelimits/dependencies/pre" = list("spma");
"/software/components/interactivelimits/active" ?=  true ;
"/software/components/interactivelimits/dispatch" ?=  true ;



