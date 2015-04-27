#Provider
- Create Provider through this command:
**curl -v -H "Accept: application/json" -H "Content-type:
application/json" -X POST -d ' {"provider":{"name": "surrey",
"description": "University of Surrey testbed resources", "urn\_prefix":
"iot.surrey.uk", "user\_id": 1}}' http://129.194.70.52:8000/providers**
- List of providers
**http://129.194.70.52:8000/providers/index.json**
#Experiments
- Create Experiment
**curl -v -H "Accept: application/json" -H "Content-type:
application/json" -X POST -d ' {"experiment":{"title":"Students Location
Pattern ","description":"Please join us to this experiment. We are
trying to map location pattern of students location during the second
semester of the year.","start\_datetime":"23-02-2015",
"end\_datetime":"28-02-2015","participation":"null","voters":"0"
,"ranking":"0",  
"interaction":"","status":"null",<br />"location":"Luleå",  
"radius":"6",  
"minimum\_age":"18","maximum\_age":"25","gender":"Any",  
"employment\_sector":"Education","employment\_status":"Student",  
"camera":"","accelerometer":"","magnetometer":"","location\_sensor":"true"}}'
129.194.70.52:8000/experiments**
- Get list of Experiments
**http://129.194.70.52:8000/experiments/index.json**
# API for nodes

## Get List of all nodes

  **curl -v -X GET http://129.194.70.52:8000/nodes/index.json**  

## Get List of all nodes by provider
  [129.194.70.52:8000/nodes/nodes\_by\_provider.json?provider_id=2](129.194.70.52:8000/nodes/nodes\_by\_provider.json?provider_id=2)  

## Get List of all nodes by location(latitude,longitude)  

### Arguments
    - myLocationLat
    - myLocationLon
    - Example: [Node with latitude=46.176388 and longitude=6.139959](http://129.194.70.52:8000/nodes/get_nodes_by_location.json?location_latitude=46.176388&location_longitude=6.139959)  

##Create a node:
    **curl -v -h "accept: application/json" -h "content-type:  
    application/json" -x post -d ' {"node":{"name":"telosb  
    mote","phone_flag":"false","urn":"unige.a",  
    "latitude":"46.176388","longitude":"6.139959"}}'  
    129.194.70.52:8000/nodes**
- Set up API for resources  
[Get list of resources by type](http://129.194.70.52:8000/resources/get_resources_by_type.json?provider\_id=49)  
- Get List of all nodes  
    **curl -v -X GET http://129.194.70.52:8000/nodes/index.json** 
- Create a node:  
      **curl -v -H "Accept: application/json" -H "Content-type:
      application/json" -X POST -d ' {"resource":{"ipso\_index": 0,
      "function\_set\_id": 9, "node\_id": 1, "resource\_type\_id": 49,
      "name":"test resource"}}' http://129.194.70.52:8000/resources**
#USER API
##List of all users:
  **http://129.194.70.52:8000/users/index.json**
  - Create a user through the following command:
  **curl -v -H "Accept: application/json" -H "Content-type:
  application/json" -X POST -d ' {"user":{"name": "Jean-Michel",
  "surname": "LeChaire", "address": "Rue de ssdds", "hometown":
  "LeLocle", "country": "Suisse", "gender": "m", "education": "PhD",
  "birthdate": "03/03/1930", "employment\_sector": "Education",
  "employment\_status": "Retired", "username": "jeanmichel",
  "password\_hash": "", "email": "jml@iot.ch", "email\_confirmed":
  "jml@iot.ch", "security\_stamp": "", "phone\_number": "0041787991232",
  "phone\_number\_confirmed": "0041787991232", "two\_factor\_confirmed":
  "false"}}' 129.194.70.52:8000/users**
  - Get details of a user for a given ID
    **curl -v -X GET http://129.194.70.52:8000/users/1.json**
#Reservation API
##List of all reservations  
    **curl -v -X GET http://129.194.70.52:8000/reservations/index.json**  
##Create reservation  
**curl -v -H "Accept: application/json" -H "Content-type:
application/json" -X POST -d '
{"reservation":{"start_datetime":"23-02-2015 14:30:00",
"end_datetime":"23-02-2015
14:50:00","reservation_key":"uMysLOdoTwSF8vllOaBtJqyo8OSm8Mcd2A_pk65qjqbrMwx6St80AA","user_id":
1}}' http://129.194.70.52:8000/reservations**
#Resource\_Reservation API
- Insert Resource\_Reservation  
**curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d ' {"resource\_reservation":{"resource\_id":1,"reservation\_id": 1}}' localhost:3000/resource\_reservations**
- Get list of all Resource\_Reservations  
**curl -v -X GET http://localhost:3000/reservations/index.json**
