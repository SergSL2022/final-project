# final-project

## 1. Create GitHub/GitLab repo with
#### - test python backend server. Just script which listening on some port and respond 200 on /
#### - Dockerfile with everything needed to run this script
#### - GitHub actions or GitLab CI which will build docker image automatically and push to docker hub. Use Github secrets or Gitlab variables to store your docker hub creds
![alt text](<screenshots/1/Знімок екрана з 2024-07-16 02-19-42.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-16 02-20-28.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-16 02-20-54.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-16 02-23-53.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-16 02-26-28.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-16 02-37-55.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-16 02-38-11.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-16 02-39-29.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-16 02-45-19.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-16 02-45-34.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-17 00-50-40.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-17 00-50-51.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-17 00-53-01.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-17 00-53-50.png>)
![alt text](<screenshots/1/Знімок екрана з 2024-07-17 00-54-23.png>)


## 2. Write terraform code to create EKS cluster
#### - use code from lection_scripts/lesson-20240620/EKS
#### - one node group with one node
#### - nginx ingress controller
![alt text](<screenshots/2/Знімок екрана з 2024-07-17 15-23-59.png>)
![alt text](<screenshots/2/Знімок екрана з 2024-07-17 15-24-11.png>)
![alt text](<screenshots/2/Знімок екрана з 2024-07-17 15-16-46.png>)
![alt text](<screenshots/2/Знімок екрана з 2024-07-17 15-18-32.png>)
![alt text](<screenshots/2/Знімок екрана з 2024-07-17 15-22-18.png>)
![alt text](<screenshots/2/Знімок екрана з 2024-07-17 15-22-37.png>)
![alt text](<screenshots/2/Знімок екрана з 2024-07-17 15-24-51.png>)
![alt text](<screenshots/2/Знімок екрана з 2024-07-17 15-25-12.png>)
![alt text](<screenshots/2/Знімок екрана з 2024-07-17 15-26-10.png>)
![alt text](<screenshots/2/Знімок екрана з 2024-07-17 15-27-41.png>)


## 3. Write terraform code which will install Cert manager, Sealed Secrets, ArgoCD to EKS using helm chart
#### - add certificate cluster issuer to EKS using kubernetes provider and kubernetes_manifest resource
#### -if you have own DNS domain, then argocd should use your dns name when expose over ingress
#### - generate SSL certificiate for the used DNS name and optionally use HTTPS
#### - each helm release should use own namespace

## 4. Write helm chart with manifests to deploy your app from item 1 to EKS
#### - deployment, service, ingress
#### - create separate namespace for your app


## 5. Write ArgoCD app which will install the sealed secret with dockerhub connection details to namespace of your app
#### Connect ArgoCD to your git repo with HTTPS and login/password (deploy token)
#### You need to generate sealed secret
#### Add and commit it to git
#### Use this git in app to add YAML manifests to kube


## 6. Write ArgoCD app which will deploy python app helm chart from item 4 to EKS
#### - It should use values file from repo
#### - This file should include usage of this unsealed secret for dockerhub auth
#### - When new image is built and pushed to docherhub, this values file should be changed in git to use new tag and ArgoCD will deploy a new version
#### - app must be publically available by DNS name and optionally SSL