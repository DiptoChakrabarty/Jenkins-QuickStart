import requests,json

jenkins_url="http://localhost:8080/job/deployer/buildWithParameters?token=diptoChakrabaRty7jenkins367"
#username="devopss"
#password="dipto"



auth=("devopss","11e0d28baa8a6662e57e5b5f48000f130d")


jenkins_params={
    'url': 'pinkudas',
     'name': 'helloworld', 
     'var': 'moneyheist',
      'n': 1
    }

print(jenkins_params)

print(jenkins_url)

response = requests.post(
            jenkins_url,auth=auth
            ,params=jenkins_params)

print(response.status_code)