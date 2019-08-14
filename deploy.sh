#기존에 실행 중인 jar 파일을 파일 이름을 변경하여 백업
sudo mv /home/centos/spring.jar /home/centos/spring_$(date '+%Y-%m-%d-%H-%M').jar.bak
#배포한 jar파일을 실행용 jar 파일 이름으로 변경
sudo mv /home/centos/demo-0.0.1-SNAPSHOT.jar /home/centos/spring.jar
