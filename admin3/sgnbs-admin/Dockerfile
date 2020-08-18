# java 是一个已有的包含 jdk 的镜像
FROM java:8u111
#  作者签名
MAINTAINER lujun(434998516@qq.com)
#  简化 jar 的名字路径 （#：表示注释掉）
#COPY ./jars/energy-boot-1.0.jar /app.jar
ADD ./target/sgnbs-admin.jar ./
#  执行 java -jar 命令 （CMD：在启动容器时才执行此行。RUN：构建镜像时就执行此行） 启动指定时区-Duser.timezone=GMT+08
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone
CMD java -jar  -Duser.timezone=GMT+08 /sgnbs-admin.jar --spring.profiles.active=test
#  设置对外端口为 8080
EXPOSE 8080
