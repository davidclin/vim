# Installation 
Ubuntu
<pre>
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install google-cloud-sdk
gcloud init
</pre>


# Useful Commands
<pre>
gcloud beta interactive   Interactive mode
gcloud version            List current SDK version
gcloud components list    List latest version of Cloud SDK 
gcloud components update  Update all installed components to the latest version
gcloud auth list          To list accounts whose credentials are stored on the local system
gcloud config list        To list the properties in your active SDK configuration (similar to showing output of ~/.aws/config)
gcloud info               To view information about your Cloud SDK installation and active SDK configuration
gcloud help               See help for command

Use the --project PROJECTNAME option to run gcloud commands in another project.

gcloud compute instances [start|stop] INSTANCE_NAME     start/stop instances
gcloud projects list                                    list projects
gcloud config configurations list                       list existing named configurations ; same as `gcloud config list`
gcloud config configurations activate NAMED_CONFIG      activates existing named configuration
gcloud config set account `ACCOUNT`                     change to another account
gcloud config set project `PROJECT ID`                  change to another project
</pre>

# Tips
<pre>
Have console generate gcloud commands for you!
</pre>

# Launch a preemptible custom compute engine with 1 vCPU and 1 GB in Standard tier
<pre>
export INSTANCE_NAME=david
echo $INSTANCE_NAME

gcloud beta compute --project=oceanic-student-257004 instances create $INSTANCE_NAME --zone=us-central1-a --machine-type=custom-1-1024 --subnet=default --network-tier=STANDARD --no-restart-on-failure --maintenance-policy=TERMINATE --preemptible --service-account=808405689074-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --image=ubuntu-1804-bionic-v20191021 --image-project=ubuntu-os-cloud --boot-disk-size=10GB --boot-disk-type=pd-standard --boot-disk-device-name=david --reservation-affinity=any
</pre>


# Resources
https://cloud.google.com/sdk
