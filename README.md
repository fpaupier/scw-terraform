# Scaleway Terraform

A template to use terraform with Scaleway provider

As a kind reminder, never put credentials in your terraform config (:

## Getting started

1. Copy the example environment file under `scw/` and adjust with your values
```shell
cp scw/.env.example scw/.env
```
then load your env variables with `source scw/.env`

2. Adjust the config of the resource your want to create in `scw/main.tf`

3. Adjust the output you want displayed upon terraforming by editing `scw/outputs.tf`

4. In the `scw` dir, run `terraform plan` and if you're good with the proposed output, run `terraform apply`


Inspired from [terraform doc](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/instance_server)
