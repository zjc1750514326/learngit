# 该镜像需要依赖的基础镜像
FROM java:8
# 将当前目录下的jar包复制到docker容器的/target目录下
ADD target/springboot-demo-0.0.1.jar springboot-demo-0.0.1.jar
# 运行过程中创建一个springboot-demo-0.0.1.jar文件
RUN bash -c 'touch springboot-demo-0.0.1.jar'
# 声明服务运行在8080端口
EXPOSE 9002
# 指定docker容器启动时运行jar包
ENTRYPOINT ["java", "-jar","springboot-demo-0.0.1.jar"]
# 指定维护者的名字
MAINTAINER zhangjincheng