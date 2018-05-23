#! /bin/bash
for repo in ${REPOS}; do
    (cd /repos; git clone https://${GITHUB_USER}:${GITHUB_TOKEN}@github.com/${repo}.git)
done

cat << EOL >> application.conf
repository {
    username = "${GITHUB_USER}"
    password = "${GITHUB_TOKEN}"
}
EOL

java -Dconfig.file=/opt/codebrag/application.conf -Dlogback.configurationFile=/opt/codebrag/logback.xml -jar /opt/codebrag/codebrag-dist-assembly-*.jar



