import boto3

s3_client = boto3.client('s3')

response = s3_client.create_bucket(
    Bucket='pregexmahi',
    CreateBucketConfiguration={
        'LocationConstraint': 'ap-south-1'
    }
)

print("Bucket Created Successfully")
print(response)