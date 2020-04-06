import os
import boto3

def add_cname_record(Name, value, action, type, ttl):
    try:
        client = boto3.client('route53')
        response = client.change_resource_record_sets(
        HostedZoneId='Z3191TPLKMSH4I',
        ChangeBatch= {
                        'Comment': 'add %s -> %s' % (Name, value),
                        'Changes': [
                            {
                             'Action': action,
                             'ResourceRecordSet': {
                                 'Name': Name,
                                 'Type': type,
                                 'TTL': ttl,
                                 'ResourceRecords': [{'Value': value}]
                            }
                        }]
        })
    except Exception as e:
        print(e)



def main():
        print('main ran for a while')
        print(os.environ['hostname'])
        add_cname_record('<insert path here>', os.environ['hostname'], 'UPSERT', 'CNAME', 600)


if __name__ == "__main__":
    main()