# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
DataType.create([{ name: 'b (boolean)' , plainformat: 'xsd:boolean' , senml: 'Boolean Value (v)' } ,
                 { name: 's (string)'  , plainformat: 'xsd:string'  , senml: 'String Value (sv)' } ,
                 { name: 'e (enum)'    , plainformat: 'xsd:integer' , senml: 'Value (v)' } ,
                 { name: 'i (integer)' , plainformat: 'xsd:integer' , senml: 'Value (v)' } ,
                 { name: 'd (decimal)' , plainformat: 'xsd:decimal' , senml: 'Value (v)' }
])
