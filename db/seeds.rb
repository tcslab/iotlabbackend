# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
DataType.create([{ name: 'b (boolean)' , plainformat: 'xsd:boolean' , senml: 'Boolean Value (v)' } ,
                 { name: 's (string)'  , plainformat: 'xsd:string'  , senml: 'String Value (sv)' } ,
                 { name: 'e (enum)'    , plainformat: 'xsd:integer' , senml: 'Value (v)' } ,
                 { name: 'i (integer)' , plainformat: 'xsd:integer' , senml: 'Value (v)' } ,
                 { name: 'd (decimal)' , plainformat: 'xsd:decimal' , senml: 'Value (v)' }
])

Interface.create([{ name: 'Link List'           , abreviation: 'll'} ,
                  { name: 'Batch'               , abreviation: 'b'} ,
                  { name: 'Linked Batch'        , abreviation: 'lb'} ,
                  { name: 'Sensor'              , abreviation: 's'} ,
                  { name: 'Parameter'           , abreviation: 'p'} ,
                  { name: 'Read-Only Parameter' , abreviation: 'rp'} ,
                  { name: 'Actuator'            , abreviation: 'a'} ,
                  { name: 'Binding'             , abreviation: 'bnd'} ,
])

1 ; "Link List"           ; "ll"
2 ; "Batch"               ; "b"
3 ; "Linked Batch"        ; "lb"
4 ; "Sensor"              ; "s"
5 ; "Parameter"           ; "p"
6 ; "Read-Only Parameter" ; "rp"
7 ; "Actuator"            ; "a"
8 ; "Binding"             ; "bnd"

1;"b (boolean)"
2;"s (string)"
3;"e (enum)"
4;"i (integer)"
5;"d (decimal)"

ResourceType.create([{ name: '', restype: '', interface_id: , data_type_id: },

])

