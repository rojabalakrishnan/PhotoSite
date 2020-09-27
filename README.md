# README

# Deploy a sample Photosite Rails Application to AWS via Docker[ <img src="https://res.cloudinary.com/practicaldev/image/fetch/s--2zNQi16j--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/i/5z1b8vht7cx8pxy70j1x.png" width="30" height="30"> + <img src="https://www.quotecolo.com/wp-content/uploads/2019/02/AWS-EC2-00.png" width="50" height="50" > + <img src="https://miro.medium.com/max/1000/1*B9CIOrxdROHvtdmouQA1_A.png" width="50" height="50" > ]
In this project, we will create a Ruby on Rails application that implements only a part of a Photo Sharing site specifically only the comments section with data that already entered into a SQL-Lite database.
  - [Youtube walkThrough](https://github.com/rojabalakrishnan/PhotoSite/wiki/Special-Issues--solutions)
  - [Develop the Photosite app with the Photo files stored in AWS S3 services.](https://github.com/rojabalakrishnan/PhotoSite/wiki#1-develop-the-photosite-app-with-the-image-files-stored-in-aws-s3-services)
  - [Dockerize a Photosite rails application](https://github.com/rojabalakrishnan/PhotoSite/wiki/Dockerize-a-photosite-rails-application)
  - [Demonstration of Launching EC2 instance](https://github.com/rojabalakrishnan/PhotoSite/wiki/Demonstration-of-Launching-Ec2-instance.)
  - [Demonstration of Application working successfully](https://github.com/rojabalakrishnan/PhotoSite/wiki/Demonstration-of-Application-working--successfully-deployed-via-Docker-on-Ec2)
  - [Things that are not working](https://github.com/rojabalakrishnan/PhotoSite/wiki/Things-that-are-not-working)
  - [Special issues solutions](https://github.com/rojabalakrishnan/PhotoSite/wiki/Special-Issues--solutions)


***
## 1. Youtube walkThrough

## 2. Develop the Photosite app with the image files stored in AWS S3 services.
  * All the necessary data related to the photosite application should be stored under the SQL-Lite database. Configure the rails application and make sure it is connected to the database successfully. The core logic needs to be implemented. 
  * Host Images on Amazon S3 and access the image using a generated public link in code.
  * Steps to host the images on S3 are listed below:
     1. ### Create S3 Bucket

         Click Create Bucket, enter the name, and select Region: US Standard

         <img src="https://github.com/rojabalakrishnan/PhotoSite/blob/master/Tutorialmages/createbucket.png" width="1000" height="300">


     2. ### Upload files to the S3 Bucket

          Once created, click on the bucket name in the list on the left and then click Upload on the next screen

          <img src="https://github.com/rojabalakrishnan/PhotoSite/blob/master/Tutorialmages/upload%20to%20s3.png" width="1000" height="400" >

     3. ### Add an S3 Bucket policy

          In the Bucket name list, choose the name of the bucket that you want to create a bucket policy for or whose bucket policy you wantto 
        edit.

          Choose Permissions, and then choose Bucket Policy.

          In the Bucket policy editor text box, type or copy and paste a new bucket policy, or edit an existing policy. The bucket policy is a 
          JSON file. The text you type in the editor must be valid JSON.

          Choose Save.

          <img src="https://github.com/rojabalakrishnan/PhotoSite/blob/master/Tutorialmages/bucketpolicy0.png" width="1000" height="400"  >

          ***

          <img src="https://github.com/rojabalakrishnan/PhotoSite/blob/master/Tutorialmages/bucketpolicy.png" width="1000" height="400" >


           ***

          <img src="https://github.com/rojabalakrishnan/PhotoSite/blob/master/Tutorialmages/bucketpolicy2.png" width="1000" height="400"  >

          ***

          <img src="https://github.com/rojabalakrishnan/PhotoSite/blob/master/Tutorialmages/bucketpolicysave.png" width="1000" height="400" >

          
        
     4. ### Get the public link of an object(image) from an S3 bucket in the following way:

           In the Name list, select the check box next to the object you want to get the public link, and then copy the lonk on the object 
           description page that appears.
           
           <img src="https://github.com/rojabalakrishnan/PhotoSite/blob/master/Tutorialmages/publicurl.png"  width="1000" height="400" >
           
***
Once everything is in place run the application and verify it by hitting the URL ****http://localhost:3000/****. It should display a list of all users in the database. The user names must be links and by clicking on a user name should display the photos for that user. 

  <img src="https://github.com/rojabalakrishnan/PhotoSite/blob/master/Tutorialmages/localuserlist.png" width="1000" height="500" >


