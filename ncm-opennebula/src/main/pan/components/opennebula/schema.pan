# ${license-info}
# ${developer-info}
# ${author-info}


declaration template components/opennebula/schema;

include 'quattor/schema';
include 'pan/types';

include 'metaconfig/opennebula/schema';

type opennebula_rpc = {
    "port" : long(0..) = 2633
    "host" : string = 'localhost'
    "user" : string = 'oneadmin'
    "password" : string
} = nlist();

type opennebula_user = {
    "user" : string 
    "password" : string
};

type component_opennebula = {
    include structure_component
    'datastores'    : opennebula_datastore[1..]
    'users'         : opennebula_user[]
    'vnets'         : opennebula_vnet[]
    'hosts'         : string[]
    "rpc"           : opennebula_rpc
} = nlist();

bind '/software/components/opennebula' = component_opennebula;
