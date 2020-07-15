import requests,json

url="http://dipto:114585c973eb2a96f8f81e2b60d1fa8c05@127.0.0.1:8080/job/deployer/buildWithParameters?token=dIptoChakrabaRty7jenkins367build"

data={
    "url": "medium.com",
    "name": "medium",
    "var": "jenkins",
    "n": 5
}

response = requests.post(url,data=json.dumps(data),
        headers={'Content-Type': 'application/json'})

print(response.status_code)