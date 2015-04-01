# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
DataType.create([{ name: 'b (boolean)' , plainformat: 'xsd:boolean' , senml: 'Boolean Value (v)' } ,
                 { name: 's (string)'  , plainformat: 'xsd:string'  , senml: 'String Value (sv)' } ,
                 { name: 'e (enum)'    , plainformat: 'xsd:integer' , senml: 'Value (v)' } ,
                 { name: 'i (integer)' , plainformat: 'xsd:integer' , senml: 'Value (v)' } ,
                 { name: 'd (decimal)' , plainformat: 'xsd:decimal' , senml: 'Value (v)' } ,
                 { name: 't (time)' , plainformat: 'xsd:time' , senml: 'Time (t)' },
                 { name: 'f (float)' , plainformat: 'xsd:float' , senml: 'Float Value (f)' },
                 { name: 'o (opaque)' , plainformat: 'xsd:opaque' , senml: 'Opaque Value (o)' }
])

Interface.create([{ name: 'Link List'           , abreviation: 'll'} ,
                  { name: 'Batch'               , abreviation: 'b'} ,
                  { name: 'Linked Batch'        , abreviation: 'lb'} ,
                  { name: 'Sensor'              , abreviation: 's'} ,
                  { name: 'Parameter'           , abreviation: 'p'} ,
                  { name: 'Read-Only Parameter' , abreviation: 'rp'} ,
                  { name: 'Actuator'            , abreviation: 'a'} ,
                  { name: 'Binding'             , abreviation: 'bnd'} ,
                  { name: 'Undefined'           , abreviation: 'ud'}
])


#Device
FunctionSet.create({name: 'Device', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Manufacturer'         , restype: 'ipso.dev.mfg'    , interface_id: 6, data_type_id: 2} ,
                     { name: 'Model'                , restype: 'ipso.dev.mdl'    , interface_id: 6, data_type_id: 2} ,
                     { name: 'Hardware Revision'    , restype: 'ipso.dev.mdl.hw' , interface_id: 6, data_type_id: 2} ,
                     { name: 'Software Version'     , restype: 'ipso.dev.mdl.sw' , interface_id: 6, data_type_id: 2} ,
                     { name: 'Serial'               , restype: 'ipso.dev.ser'    , interface_id: 6, data_type_id: 2} ,
                     { name: 'Name'                 , restype: 'ipso.dev.n'      , interface_id: 5, data_type_id: 2} ,
                     { name: 'Power Supply'         , restype: 'ipso.dev.pwr'    , interface_id: 6, data_type_id: 3} ,
                     { name: 'Power Supply Voltage' , restype: 'ipso.dev.pwr.v'  , interface_id: 4, data_type_id: 5} ,
                     { name: 'Time'                 , restype: 'ipso.dev.time'   , interface_id: 5, data_type_id: 4} ,
                     { name: 'Uptime'               , restype: 'ipso.dev.uptim'  , interface_id: 4, data_type_id: 4}
])

#Message-3
FunctionSet.create({name: 'Message', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Status', restype: 'ipso.msg.status', interface_id: 5, data_type_id: 2},
                     { name: 'Alarms', restype: 'ipso.msg.alarms', interface_id: 5, data_type_id: 2},
                     { name: 'Display', restype: 'ipso.msg.disp',   interface_id: 5, data_type_id: 2}
])
#Configuration-
FunctionSet.create({name: 'Configuration', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Services' , restype: 'ipso.cfg.services', interface_id: 9, data_type_id: 2},
                     { name: 'Stack'    , restype: 'ipso.cfg.stack', interface_id: 5, data_type_id: 2},
                     { name: 'Stack PHY', restype: 'ipso.cfg.stack.phy', interface_id: 5, data_type_id: 2},
                     { name: 'Stack MAC', restype: 'ipso.cfg.stack.mac', interface_id: 5, data_type_id: 2},
                     { name: 'Stack NET', restype: 'ipso.cfg.stack.net', interface_id: 5, data_type_id: 2},
                     { name: 'Stack RTG', restype: 'ipso.cfg.stack.rtg', interface_id: 5, data_type_id: 2}
])
#Location-5
FunctionSet.create({name: 'Location', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'GPS Location', restype: 'ipso.loc.gps', interface_id: 4, data_type_id: 2},
                     { name: 'XY Location', restype: 'ipso.loc.xy', interface_id: 4, data_type_id: 2},
                     { name: 'Semantic Location', restype: 'ipso.loc.sem', interface_id: 4, data_type_id: 2},
                     { name: 'Fix', restype: 'ipso.loc.fix', interface_id: 4, data_type_id: 1},
                     { name: 'Period', restype: 'ipso.loc.per', interface_id: 5, data_type_id: 4}
])
#Load Control-6
FunctionSet.create({name: 'Load Control', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Event Identifier', restype: 'ipso.load.id', interface_id: 5, data_type_id: 2},
                     { name: 'Start Time', restype: 'ipso.load.time', interface_id: 5, data_type_id: 6},
                     { name: 'Duration In Min', restype: 'ipso.load.dur', interface_id: 5, data_type_id: 4},
                     { name: 'Criticality Level', restype: 'ipso.load.crt', interface_id: 5, data_type_id: 4},
                     { name: 'Avg Load Adj Pct', restype: 'ipso.load.lap', interface_id: 5, data_type_id: 4},
                     { name: 'Duty Cycle', restype: 'ipso.load.dc', interface_id: 5, data_type_id: 4}
])
#Light Control-7
FunctionSet.create({name: 'Light Control', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'On/Off', restype: 'ipso.lt.on', interface_id: 7, data_type_id: 1},
                     { name: 'Dimmer', restype: 'ipso.lt.dim', interface_id: 7, data_type_id: 4},
                     { name: 'Colour', restype: 'ipso.lt.col', interface_id: 7, data_type_id: 2},
                     { name: 'Units', restype: 'ipso.lt.unit', interface_id: 7, data_type_id: 2},
                     { name: 'On Time', restype: 'ipso.lt.ot', interface_id: 7, data_type_id: 4},
                     { name: 'Cumulati ve active power', restype: 'ipso.lt.cap', interface_id: 7, data_type_id: 7},
                     { name: 'Power factor', restype: 'ipso.lt.pf', interface_id: 7, data_type_id: 7}
])
#Set points-4
FunctionSet.create({name: 'Set Point', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Set Point Value', restype: 'ipso.sp.spv', interface_id: 9, data_type_id: 7},
                     { name: 'Colour', restype: 'ipso.sp.col', interface_id: 9, data_type_id: 2},
                     { name: 'Units', restype: 'ipso.sp.unit', interface_id: 9, data_type_id: 2},
                     { name: 'Application Type', restype: 'ipso.sp.at', interface_id: 9, data_type_id: 2}
])
#Humidity Sensor-7
FunctionSet.create({name: 'Humidity Sensor', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Sensor Value', restype: 'ipso.hum.sv', interface_id: 9, data_type_id: 7},
                     { name: 'Units', restype: 'ipso.hum.col', interface_id: 9, data_type_id: 2},
                     { name: 'Min Measured Value', restype: 'ipso.hum.unit', interface_id: 9, data_type_id: 7},
                     { name: 'Max Measured Value', restype: '', interface_id: 9, data_type_id: 7},
                     { name: 'Min Range Value', restype: '', interface_id: 9, data_type_id: 7},
                     { name: 'Max Range Value', restype: '', interface_id: 9, data_type_id: 7},
                     { name: 'Reset Min and Max Measured Values', restype: '', interface_id: 9, data_type_id: 8}
])
#Temperature Sensor-7
FunctionSet.create({name: 'Temperature Sensor', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Sensor Value'                      , restype: 'ipso.hum.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Units'                             , restype: 'ipso.hum.' , interface_id: 9 , data_type_id: 2} ,
                     { name: 'Min Measured Value'                , restype: 'ipso.hum.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Measured Value'                , restype: 'ipso.hum.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Min Range Value'                   , restype: 'ipso.hum.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Range Value'                   , restype: 'ipso.hum.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Reset Min and Max Measured Values' , restype: 'ipso.hum.' , interface_id: 9 , data_type_id: 8}
])
#Illuminance Sensor-7
FunctionSet.create({name: 'Illuminance Sensor', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Sensor Value'                      , restype: 'ipso.lum.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Units'                             , restype: 'ipso.lum.' , interface_id: 9 , data_type_id: 2} ,
                     { name: 'Min Measured Value'                , restype: 'ipso.lum.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Measured Value'                , restype: 'ipso.lum.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Min Range Value'                   , restype: 'ipso.lum.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Range Value'                   , restype: 'ipso.lum.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Reset Min and Max Measured Values' , restype: 'ipso.lum.' , interface_id: 9 , data_type_id: 8}
])
#Generic Sensor-7
FunctionSet.create({name: 'Generic Sensor', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Sensor Value'                      , restype: 'ipso.gsen.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Units'                             , restype: 'ipso.gsen.' , interface_id: 9 , data_type_id: 2} ,
                     { name: 'Min Measured Value'                , restype: 'ipso.gsen.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Measured Value'                , restype: 'ipso.gsen.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Min Range Value'                   , restype: 'ipso.gsen.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Range Value'                   , restype: 'ipso.gsen.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Reset Min and Max Measured Values' , restype: 'ipso.gsen.' , interface_id: 9 , data_type_id: 8} ,
                     { name: 'Application Type'                  , restype: 'ipso.gsen.' , interface_id: 9 , data_type_id: 2} ,
                     { name: 'Sensor Type'                       , restype: 'ipso.gsen.' , interface_id: 9 , data_type_id: 2}
])
#Power Measurements-18
FunctionSet.create({name: 'Power Measurement', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Instantaneous active power'        , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Min Measured active power'         , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Measured active power'         , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Min Range active power'            , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Range active power'            , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Cumulative active power'           , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Active Power Calibration'          , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Instantaneous reactive power'      , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Min Measured reactive power'       , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Measured reactive power'       , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Min Range reactive power'          , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Range reactive power'          , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Reset Min and Max Measured Values' , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 8} ,
                     { name: 'Cumulative reactive power'         , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Reactive Power Calibration'        , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Power factor'                      , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Current Calibration'               , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Reset Cumulative energy'           , restype: 'ipso.pm.' , interface_id: 9 , data_type_id: 8}
])
#Actuation-5
FunctionSet.create({name: 'Actuation', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'On/Off'            , restype: 'ipso.act.' , interface_id: 9 , data_type_id: 1} ,
                     { name: 'Dimmer'            , restype: 'ipso.act.' , interface_id: 9 , data_type_id: 4} ,
                     { name: 'On Time'           , restype: 'ipso.act.' , interface_id: 9 , data_type_id: 4} ,
                     { name: 'Muti-state Output' , restype: 'ipso.act.' , interface_id: 9 , data_type_id: 2} ,
                     { name: 'Application Type'  , restype: 'ipso.act.' , interface_id: 9 , data_type_id: 2}
])
#Magnetometers-5
FunctionSet.create({name: 'Magnetometer', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'X Value'           , restype: 'ipso.mag.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Y Value'           , restype: 'ipso.mag.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Z Value'           , restype: 'ipso.mag.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Units'             , restype: 'ipso.mag.' , interface_id: 9 , data_type_id: 2} ,
                     { name: 'Compass Direction' , restype: 'ipso.mag.' , interface_id: 9 , data_type_id: 7}
])
#Barometer-7
FunctionSet.create({name: 'Barometer', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Sensor Value'                      , restype: 'ipso.bar.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Units'                             , restype: 'ipso.bar.' , interface_id: 9 , data_type_id: 2} ,
                     { name: 'Min Measured Value'                , restype: 'ipso.bar.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Measured Value'                , restype: 'ipso.bar.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Min Range Value'                   , restype: 'ipso.bar.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Range Value'                   , restype: 'ipso.bar.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Reset Min and Max Measured Values' , restype: 'ipso.bar.' , interface_id: 9 , data_type_id: 8}
])
#Power Control-5
FunctionSet.create({name: 'Power Control', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'On/Off'                            , restype: 'ipso.poc.' , interface_id: 9 , data_type_id: 1} ,
                     { name: 'Dimmer'                            , restype: 'ipso.poc.' , interface_id: 9 , data_type_id: 4} ,
                     { name: 'On Time'                           , restype: 'ipso.poc.' , interface_id: 9 , data_type_id: 4} ,
                     { name: 'Cumulative active power'           , restype: 'ipso.poc.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Power factor'                      , restype: 'ipso.poc.' , interface_id: 9 , data_type_id: 7}
])
#Presence-6
FunctionSet.create({name: 'Presence Sensor', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Digital Input State'               , restype: 'ipso.pre.' , interface_id: 9 , data_type_id: 1} ,
                     { name: 'Digital Input Counter'             , restype: 'ipso.pre.' , interface_id: 9 , data_type_id: 4} ,
                     { name: 'Digital Input Counter Reset'       , restype: 'ipso.pre.' , interface_id: 9 , data_type_id: 8} ,
                     { name: 'Sensor Type'                       , restype: 'ipso.pre.' , interface_id: 9 , data_type_id: 2} ,
                     { name: 'Busy to Clear delay'               , restype: 'ipso.pre.' , interface_id: 9 , data_type_id: 4} ,
                     { name: 'Clear to Busy delay'               , restype: 'ipso.pre.' , interface_id: 9 , data_type_id: 4}
])
#Analog_output-4
FunctionSet.create({name: 'Analogue Output', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Analog Output Current Value'       , restype: 'ipso.ao.'  , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Min Range Value'                   , restype: 'ipso.ao.'  , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Range Value'                   , restype: 'ipso.ao.'  , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Application Type'                  , restype: 'ipso.ao.'  , interface_id: 9 , data_type_id: 2}
])
#Analog_input-6
FunctionSet.create({name: 'Analogue Input', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Analog Input Current Value'        , restype: 'ipso.ai'   , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Min Measured Value'                , restype: 'ipso.ai'   , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Measured Value'                , restype: 'ipso.ai'   , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Min Range Value'                   , restype: 'ipso.ai'   , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Range Value'                   , restype: 'ipso.ai'   , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Reset Min and Max Measured Values' , restype: 'ipso.ai'   , interface_id: 9 , data_type_id: 8} ,
                     { name: 'Application Type'                  , restype: 'ipso.ai'   , interface_id: 9 , data_type_id: 2} ,
                     { name: 'Sensor Type'                       , restype: 'ipso.ai'   , interface_id: 9 , data_type_id: 2}
])
#Digital_output-3
FunctionSet.create({name: 'Digital Output', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Digital Output State'    , restype: 'ipso.do.' , interface_id: 9 , data_type_id: 1} ,
                     { name: 'Digital Output Polarity' , restype: 'ipso.do.' , interface_id: 9 , data_type_id: 1} ,
                     { name: 'Application Type'        , restype: 'ipso.do.' , interface_id: 9 , data_type_id: 2}
])
#Digital_input-8
FunctionSet.create({name: 'Digital Input', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'Digital Input State'           , restype: 'ipso.di.' , interface_id: 9 , data_type_id: 1} ,
                     { name: 'Digital Input Counter'         , restype: 'ipso.di.' , interface_id: 9 , data_type_id: 4} ,
                     { name: 'Digital Input Polarity'        , restype: 'ipso.di.' , interface_id: 9 , data_type_id: 1} ,
                     { name: 'Digital Input Debounce Period' , restype: 'ipso.di.' , interface_id: 9 , data_type_id: 4} ,
                     { name: 'Digital Input Edge Selection'  , restype: 'ipso.di.' , interface_id: 9 , data_type_id: 4} ,
                     { name: 'Digital Input Counter Reset'   , restype: 'ipso.di.' , interface_id: 9 , data_type_id: 8} ,
                     { name: 'Application Type'              , restype: 'ipso.di.' , interface_id: 9 , data_type_id: 2} ,
                     { name: 'Sensor Type'                   , restype: 'ipso.di.' , interface_id: 9 , data_type_id: 2}
])
#Accelerometer-6
FunctionSet.create({name: 'Accelerometer', restype: '', description: '', root_path: ''})
ResourceType.create([{ name: 'X Value'         , restype: 'ipso.acl.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Y Value'         , restype: 'ipso.acl.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Z Value'         , restype: 'ipso.acl.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Units'           , restype: 'ipso.acl.' , interface_id: 9 , data_type_id: 2} ,
                     { name: 'Min Range Value' , restype: 'ipso.acl.' , interface_id: 9 , data_type_id: 7} ,
                     { name: 'Max Range Value' , restype: 'ipso.acl.' , interface_id: 9 , data_type_id: 7}
])

