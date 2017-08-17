#!/bin/bash
aws ec2 disassociate-address --association-id eipassoc-3a874c06
aws ec2 release-address --allocation-id eipalloc-e2df22df
aws ec2 terminate-instances --instance-ids i-007b9121adab1ee28
aws ec2 wait instance-terminated --instance-ids i-007b9121adab1ee28
aws ec2 delete-security-group --group-id sg-8a3758f0
aws ec2 disassociate-route-table --association-id rtbassoc-ed2dca95
aws ec2 delete-route-table --route-table-id rtb-45bd8323
aws ec2 detach-internet-gateway --internet-gateway-id igw-6f64f708 --vpc-id vpc-5b60cd3d
aws ec2 delete-internet-gateway --internet-gateway-id igw-6f64f708
aws ec2 delete-subnet --subnet-id subnet-d50e1f9c
aws ec2 delete-vpc --vpc-id vpc-5b60cd3d
echo If you want to delete the key-pair, please do it manually.
