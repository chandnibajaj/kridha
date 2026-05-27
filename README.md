# kridha

1. setup name of pipeline with name key value pair
2. we set trigger with on key value pair
3. to setup manual trigger, we use workflow_dispatch under on parent key, with this on Actions tab it will show "Run Workflow" button
4. we define permission for our workflow
5. we define one jobs with the help job key value pair
6. we setup working directory for the workflow to run from given folder/directory

## steps
1. we have 1st always as checkout, this helps to fetch the code from given branch
2. azure login

## to setup azure login
### prerequistes
1. need to have active azure subscription

## Create a app registrations
1. go to azure portal
2. search "entra id"
3. go to manage, look for app registration
4. create new app registration with "new registration" button, just add a name and click create
5. once created, go to oversection, and click client Add a certificare or secret link in blue color
<img width="814" height="228" alt="image" src="https://github.com/user-attachments/assets/b1181d44-824c-468c-a2ab-ead06f9ec89a" />
6. click on federated credentials, then click on Add credentials
<img width="772" height="295" alt="image" src="https://github.com/user-attachments/assets/ae65739a-eaaa-449a-9b90-c8003819fc37" />
7. Select a federated credential scenario as Github Actions deploying Azure Resources
<img width="602" height="353" alt="image" src="https://github.com/user-attachments/assets/367e6a50-a07c-4ed4-97ae-ca7346fdf0c6" />   
<br>
8. Now add the required detials like
- Organistation --> Name of your organsition else your github account name
- Repository    --> name of your repository where you want to use this app registation
- Entity Type --> Branch
- GiHub Branch name
- Name
<img width="1322" height="710" alt="image" src="https://github.com/user-attachments/assets/305513a5-c982-41c6-85d3-9c8fb6f82047" />
9. Next, go the subscriptions, under subscriptions to to access control (IAM)
- for this step, user must have a Owner access with permission to grant roles to other users
<img width="1807" height="251" alt="image" src="https://github.com/user-attachments/assets/0cfda206-dd98-4f30-a7df-9f78772ed64a" />

- go to Privileged administrator roles then select contributor role
- then click on + Select members button, and select your app registration name
  <img width="914" height="413" alt="image" src="https://github.com/user-attachments/assets/cead9f23-2759-43bf-a667-5981a181a043" />
- then assign the role by clicking Review + assign button
<img width="855" height="374" alt="image" src="https://github.com/user-attachments/assets/1d0533c3-27c5-458a-af55-389f311ae60c" />


## To run a workflow manually 
- go to actions
- select your workflow
- If workflow_dispatch is set you can see Run Workflow Button
- Select Branch if needed, default main will be selected
- click Run wOrkflow
<img width="944" height="368" alt="image" src="https://github.com/user-attachments/assets/3ac60a9f-ad9d-4f44-b4e8-d6dde3669f6f" />
