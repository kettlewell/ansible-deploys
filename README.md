# Ansible Deploys
A collection of Ansible roles, plays and configurations

## About / Ideas
The initial goal here is to build a collection of tools that will allow me to spin up and maintain a Spark cluster using Amazon EC2 spot instances.

The general concept is to provision a spark master, which will be configured with Ansible and all the roles and tools to maintain the cluster from within Amazon's infrastructure ( keeping overhead down for performance gains ) and be able to spin up / down any number of Spark worker nodes.

The master should eventually be HA with zookeeper

S3 will be the distributed object store of choice ( vs HDFS ) for now anyhow. There are some advantages using HDFS, but the overhead is higher and S3 anecdotally has really good performance.

Will be using dynamic inventory ( ec2.py )



