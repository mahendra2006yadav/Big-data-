import boto3
s3=boto3.client('s3')


s3.upload_file('c:\\Users\\Admin\\Documents\\test.xlsx',
               'pregexmahi',
               'first file'
               )

print("file uploaded")