import boto3

ec2 = boto3.client("ec2")
instance_id = "i-01c845150b162d884"

ec2.stop_instances(
    InstanceIds=[instance_id]
)

print("EC2 stop request sent.")
