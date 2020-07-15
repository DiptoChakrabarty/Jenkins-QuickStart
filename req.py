import requests,json

jenkins_url="http://localhost:8080/job/deployer/buildWithParameters?token=diptoChakrabaRty7jenkins367"

auth=("devopss","11e0d28baa8a6662e57e5b5f48000f130d")

jenkins_params={
    'url': 'medium.com',
     'name': 'medium', 
     'var': 'jenkins',
      'n': 2
    }

print(jenkins_params)

print(jenkins_url)

response = requests.get(
            jenkins_url,auth=auth,
            params=jenkins_params,
            headers={'content-type': 'application/json'})

print(response.status_code)