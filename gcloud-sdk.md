# Installation (Ubuntu)

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install google-cloud-sdk
gcloud init

## Resources

https://cloud.google.com/sdk

# Useful Commands

gcloud auth list      To list accounts whose credentials are stored on the local system
gcloud config list    To list the properties in your active SDK configuration (similar to showing output of ~/.aws/config)
gcloud info           To view information about your Cloud SDK installation and active SDK configuration
gcloud help



