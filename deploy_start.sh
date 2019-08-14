echo "AWS S3 업로드"
aws s3 cp spring.zip s3://s3-godo-deploy/spring.zip --region ap-northeast-2

echo "AWS CodeDeploy 배포"
aws deploy create-deployment \
--application-name code_deploy \
--deployment-group-name codedeploy \
--region ap-northeast-2 \
--s3-location bucket=s3-godo-deploy,bundleType=zip,key=spring.zip