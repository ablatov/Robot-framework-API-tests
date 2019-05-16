#PredictionReq checker 

##System under test - REST API Service
List of result codes that were tested.
1. apiResSuccess = 0,
2. apiResInvalidRequestFormat = 3,
3. apiResPointHasTooManyMissingValues = 11,
4. apiResNoPointsForPredict = 12,
5. apiResNotEnoughDataForPredict = 13
    
##REQUEST INFO
### Method 
POST
	
###Request URI sample
http://somehost:someport/?cmd=predictionReq

###HTTP Version
HTTP/1.1

###Request Headers
1. Content-Length
Required. The length of the content body.
2. Content-Type:application/json
Required, as the request body is sent in JSON format.
3. Accept: application/json
Required, as the response is sent in JSON format.

###Sample Request
```json
{
  "modelId": "10083",
  "featureNames": [
    "datetime",
    "season",
    "holiday",
    "workingday",
    "weather",
    "temp",
    "atemp",
    "humidity",
    "windspeed"
  ],
  "values": [
    [
      "2019-05-16 11:19:15",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    ],
    [
      "2019-05-16 11:19:15",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    ]
  ]
}
```

##RESPONSE INFO

###Status Code
A successful operation returns status code 200 (OK)

###Response Headers
The response may include standard HTTP headers. All standard headers conform to the HTTP/1.1 protocol specification
1. Content-Type:application/json
Indicates that the content body is in json format.

###Sample Response
```json
{
  "targetValName": "count",
  "resultCode": 0,
  "result": [
    {
      "value": 123
    },
    {
      "value": 345
    }
  ]
}
```