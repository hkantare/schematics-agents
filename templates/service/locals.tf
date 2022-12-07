###############################################################################
# IBM Confidential
# OCO Source Materials
# IBM Cloud Schematics
# (C) Copyright IBM Corp. 2022 All Rights Reserved.
# The source code for this program is not  published or otherwise divested of
# its trade secrets, irrespective of what has been deposited with
# the U.S. Copyright Office.
###############################################################################

#DONOT EDIT THIS FILE UNLESS YOU ARE SURE WHAT YOU ARE DOING

locals {
  #"IAM endpoint url"
  iam_url = "https://private.iam.cloud.ibm.com"
  #IAM compatmode (false for stage/prod)
  iam_compatmode = "false"
  #Schematics endpoint url (optional: private CSE or VPE)
  schematics_endpoint = "https://private-${var.schematics_endpoint_location}.schematics.cloud.ibm.com"
  #Schematics agent jobrunner image ID
  schematics_jobrunner_image = "icr.io/schematics-remote/schematics-job-runner:eecd8d0b-210"
  #Schematics agent job12 image ID
  schematics_runtime_job_image = "icr.io/schematics-remote/schematics-agent-ws-job-20221202:5df1c1a2-392"
  #schematics_sandbox_image
  schematics_sandbox_image = "icr.io/schematics-remote/schematics-sandbox:d94e2078-339"
  #Schematics environment (dev|stage|prod)
  schematics_environment = "Prod"
}

locals {
  #Config dir where the cluster config will be downloaded
  config_dir = "/tmp"
  #Define namespaces
  namespaces = {
    schematics_job_runtime = "schematics-job-runtime"
    schematics_sandbox     = "schematics-sandbox"
    schematics_runtime     = "schematics-runtime"
    logdna_agent           = "schematics-ibm-observe"
  }
}