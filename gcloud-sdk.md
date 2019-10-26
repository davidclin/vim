# Installation (Ubuntu)
<pre>
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install google-cloud-sdk
gcloud init
</pre>


# Useful Commands
<pre>
gcloud auth list      To list accounts whose credentials are stored on the local system
gcloud config list    To list the properties in your active SDK configuration (similar to showing output of ~/.aws/config)
gcloud info           To view information about your Cloud SDK installation and active SDK configuration
gcloud help


gcloud compute instances [start|stop] INSTANCE_NAME     start/stop instances
gcloud projects list                                    list projects
gcloud config configurations list                       list existing named configurations
gcloud config configurations activate NAMED_CONFIG      activates existing named configuration
gcloud config set account `ACCOUNT`                     change to another account
gcloud config set project `PROJECT ID`                  change to another project
</pre>


# Tips
<pre>
Have console generate gcloud commands for you!
</pre>

# Resources
https://cloud.google.com/sdk

