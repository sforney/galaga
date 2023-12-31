{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_formation",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":1,"eventType":2,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"contents","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":6,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"translate_step","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"3","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"translate_counter","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"4","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"translate_direction","filters":[],"listItems":[
        "translate_dir.RIGHT",
        "translate_dir.LEFT",
      ],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"translate_dir.RIGHT","varType":6,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"translate_max","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"8","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"formation_coords","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":6,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"translate_timer","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"50","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"isLocked","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"False","varType":3,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spread_delay","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"6","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spread_counter","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spread_direction","filters":[],"listItems":[
        "spread_dir.IN",
        "spread_dir.OUT",
      ],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"spread_dir.OUT","varType":6,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spread_max","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"20","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"idle_frame","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"columns","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"10","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"rows","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"5","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spread_step","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":".25","varType":0,},
  ],
  "solid": false,
  "spriteId": null,
  "spriteMaskId": null,
  "visible": false,
}