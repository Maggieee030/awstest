# 使用 OpenJDK 17 官方瘦身版镜像作为构建环境
FROM openjdk:17-slim AS build

# 为 Spring Boot 添加用户和组
RUN addgroup --group spring && adduser --system --ingroup spring spring

# 使用前面创建的用户
USER spring:spring

# 复制编译好的应用到目录
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# 暴露端口
EXPOSE 8080

# 启动命令
ENTRYPOINT ["java", "-jar", "app.jar"]