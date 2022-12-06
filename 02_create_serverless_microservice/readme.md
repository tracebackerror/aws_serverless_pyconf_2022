## Create a simple microservice using Lambda and API Gateway

### Create an API using Amazon API Gateway

Follow the steps in this section to create a new Lambda function and an API Gateway endpoint to trigger it:

To create an API

Sign in to the AWS Management Console and open the AWS Lambda console.

Choose Create Lambda function.

Choose Use a blueprint.

Enter microservice in the search bar. Choose the microservice-http-endpoint blueprint.
![img.png](img.png)
Configure your function with the following settings.

Name – lambda-microservice.
![img_1.png](img_1.png)

Role – Create a new role from AWS policy templates.

Role name – lambda-apigateway-role.

Policy templates – Simple microservice permissions.
![img_2.png](img_2.png)


API – Create an API.

API Type – HTTP API.

Security – Open.

![img_3.png](img_3.png)


Choose Create function.

![img_4.png](img_4.png)

### Test sending an HTTP request
Choose Hello World Template
![img_9.png](img_9.png)

```
{
	"httpMethod": "GET",
	"queryStringParameters": {
	"TableName": "MyTable"
    }
}
```


### Create DynomoDB Table
![img_5.png](img_5.png)

![img_6.png](img_6.png)

![img_7.png](img_7.png)

![img_10.png](img_10.png)


### Delete
Delete Role

![img_8.png](img_8.png)

Delete Function
![img_11.png](img_11.png)

Delete Dynamo DB
![img_12.png](img_12.png)
![img_13.png](img_13.png)