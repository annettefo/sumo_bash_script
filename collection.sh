#!bin/sh
ACCESS_ID=suTdmxxxx
ACCESS_KEY=zxxxx
URL=https://api.us2.sumologic.com/api/v1/

curl -u 'xxxx:xxxxx' -X GET https://api.us2.sumologic.com/api/v1/collectors | grep "id" | cut -d':' -f2 - | sed 's/,//g'

curl -u 'xxx:xxxx' -X GET https://api.us2.sumologic.com/api/v1/collectors/25/sources

COLLECTORS=$(curl -u $ACCESS_ID:$ACCESS_KEY -X GET $URL/collectors | grep "id" | cut -d':' -f2 - | sed 's/,//g')

echo ${COLLECTORS[*]}

echo ${COLLECTORS[2]}

#for i in {1..5}
#do
#  curl -u $ACCESS_ID:$ACCESS_KEY -X GET $URL/{COLLECTORS[1]}/sources
#done
