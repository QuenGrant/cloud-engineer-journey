import boto3

ec2 = boto3.client("ec2")

ec2.stop_instances(
    InstanceIds=["i-01c845150b162d884"]
)

print("EC2 stop request sent.")
