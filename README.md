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
![alt text](<screenshots/3/Знімок екрана з 2024-07-18 22-58-52.png>)
![alt text](<screenshots/3/Знімок екрана з 2024-07-18 22-59-03.png>)
![alt text](<screenshots/3/Знімок екрана з 2024-07-18 23-10-03.png>)
![alt text](<screenshots/3/Знімок екрана з 2024-07-18 23-10-24.png>)
![alt text](<screenshots/3/Знімок екрана з 2024-07-18 23-10-35.png>)
![alt text](<screenshots/3/Знімок екрана з 2024-07-18 23-10-42.png>)
![alt text](<screenshots/3/Знімок екрана з 2024-07-18 23-11-24.png>)
![alt text](<screenshots/3/Знімок екрана з 2024-07-18 23-15-37.png>)
![alt text](<screenshots/3/Знімок екрана з 2024-07-18 23-16-34.png>)
![alt text](<screenshots/3/Знімок екрана з 2024-07-18 23-17-27.png>)
![alt text](<screenshots/3/Знімок екрана з 2024-07-19 00-09-45.png>)
![alt text](<screenshots/3/Знімок екрана з 2024-07-19 00-10-09.png>)
![alt text](<screenshots/3/Знімок екрана з 2024-07-19 00-10-42.png>)


## 4. Write helm chart with manifests to deploy your app from item 1 to EKS
#### - deployment, service, ingress
#### - create separate namespace for your app
![alt text](<screenshots/4/Знімок екрана з 2024-07-21 04-20-27.png>)
![alt text](<screenshots/4/Знімок екрана з 2024-07-21 04-20-50.png>)
![alt text](<screenshots/4/Знімок екрана з 2024-07-21 04-21-02.png>)
![alt text](<screenshots/4/Знімок екрана з 2024-07-21 04-21-15.png>)
![alt text](<screenshots/4/Знімок екрана з 2024-07-21 04-21-26.png>)
![alt text](<screenshots/4/Знімок екрана з 2024-07-21 04-21-39.png>)


## 5. Write ArgoCD app which will install the sealed secret with dockerhub connection details to namespace of your app
#### Connect ArgoCD to your git repo with HTTPS and login/password (deploy token)
#### You need to generate sealed secret
#### Add and commit it to git
#### Use this git in app to add YAML manifests to kube
![alt text](<screenshots/5/Знімок екрана з 2024-07-22 04-29-48.png>)
![alt text](<screenshots/5/Знімок екрана з 2024-07-22 04-29-59.png>)
![alt text](<screenshots/5/Знімок екрана з 2024-07-22 04-31-42.png>)
![alt text](<screenshots/5/Знімок екрана з 2024-07-22 04-34-07.png>)
![alt text](<screenshots/5/Знімок екрана з 2024-07-22 04-35-30.png>)
![alt text](<screenshots/5/Знімок екрана з 2024-07-22 04-35-42.png>)

![alt text](<screenshots/5/Знімок екрана з 2024-07-21 23-52-29.png>)
![alt text](<screenshots/5/Знімок екрана з 2024-07-22 00-00-34.png>)
![alt text](<screenshots/5/Знімок екрана з 2024-07-22 00-06-14.png>)
![alt text](<screenshots/5/Знімок екрана з 2024-07-22 04-46-51.png>)
![alt text](<screenshots/5/Знімок екрана з 2024-07-22 04-50-21.png>)
![alt text](<screenshots/5/Знімок екрана з 2024-07-22 04-50-45.png>)


## 6. Write ArgoCD app which will deploy python app helm chart from item 4 to EKS
#### - It should use values file from repo
#### - This file should include usage of this unsealed secret for dockerhub auth
#### - When new image is built and pushed to docherhub, this values file should be changed in git to use new tag and ArgoCD will deploy a new version
#### - app must be publically available by DNS name and optionally SSL
![alt text](<screenshots/6/Знімок екрана з 2024-07-23 15-36-35.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-23 15-36-48.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-23 15-37-07.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-23 15-38-16.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 04-40-30.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 04-40-51.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 02-55-54.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 02-56-05.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 02-56-48.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 02-58-18.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 02-58-30.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 02-59-14.png>)

![alt text](<screenshots/6/Знімок екрана з 2024-07-24 04-52-28.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 04-54-52.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 04-55-52.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 04-56-23.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 04-57-28.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 04-57-35.png>)
![alt text](<screenshots/6/Знімок екрана з 2024-07-24 04-58-42.png>)


## RESULT
![alt text](<screenshots/result/Знімок екрана з 2024-07-24 05-05-11.png>)
![alt text](<screenshots/result/Знімок екрана з 2024-07-24 05-09-20.png>)
![alt text](<screenshots/result/Знімок екрана з 2024-07-24 05-04-33.png>)
![alt text](<screenshots/result/Знімок екрана з 2024-07-24 05-05-49.png>)
![alt text](<screenshots/result/Знімок екрана з 2024-07-24 05-06-33.png>)
![alt text](<screenshots/result/Знімок екрана з 2024-07-24 05-08-15.png>)