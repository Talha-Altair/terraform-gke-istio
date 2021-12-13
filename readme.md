# Terraform Module to Provision a GKE Cluster with istio enabled

## Setup

- Configure providers for kubernetes and gcloud as per your requirement

## pre-requisites

- Helm
- istioctl

## Variables to pass to Module

- [Terraform Module to Provision a GKE Cluster with istio enabled](#terraform-module-to-provision-a-gke-cluster-with-istio-enabled)
  - [Setup](#setup)
  - [pre-requisites](#pre-requisites)
  - [Variables to pass to Module](#variables-to-pass-to-module)
  - [region](#region)
  - [creds_file_path](#creds_file_path)
  - [project_id](#project_id)
  - [cluster_name](#cluster_name)
  - [machine_type](#machine_type)
  - [gke_num_nodes](#gke_num_nodes)
  - [istio_location](#istio_location)
  - [node_locations](#node_locations)

## region

Region in which the GKE cluster will be provisioned

## creds_file_path

path to creds.json files for gcloud service account, feel free to update provider as per your requirment

## project_id

ID of Gcloud Project

## cluster_name

User Defined Name given to the Cluster

## machine_type

Machine Type to be used for the Node Pool

## gke_num_nodes

Number of Nodes in the Node Pool

## istio_location

local istio files downloaded location

## node_locations

a list of zones within the region to provsion nodes