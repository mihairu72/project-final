#Сначала мы создаем исполняемый файл JAR и
#как часть инструкций файла Docker копируем исполняемый
#файл JAR поверх базового образа JRE после применения необходимых настроек.

FROM openjdk:17-buster
VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY resources ./resources
COPY ${JAR_FILE} jira-1.0.jar
ENTRYPOINT ["java","-jar","/jira-1.0.jar"]