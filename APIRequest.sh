
#!/usr/bin/env bash
# Este script en realidad es para crear un canal en ThingSpeak

curl --header "Content-Type: application/json" --request POST --data '{"api_key":"Q489PVV7XBG2VYWZ","name":"APIRequest_Project","field1":"Name","field2":"Category","field3":"Group","field4":"Html Code"}' https://api.thingspeak.com/channels.json
