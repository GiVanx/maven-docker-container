FROM openjdk:8-jdk

ARG MAVEN_VERSION=3.6.1
ARG MAVEN_BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries

RUN curl -fsSL -o /tmp/apache-maven.tar.gz ${MAVEN_BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
&& mkdir -p /usr/share/maven \
&& tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
&& rm -f /tmp/apache-maven.tar.gz \
&& ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

CMD ["mvn"]
