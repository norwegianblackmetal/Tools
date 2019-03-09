FROM elasticsearch:6.6.1
LABEL maintainer=norwegianblackmetal
ADD elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
EXPOSE 9200 9300
