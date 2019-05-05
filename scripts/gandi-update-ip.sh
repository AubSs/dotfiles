#!/usr/bin/env bash

# This script aims to update gandi IPV4/6 DNS records

# Basic parameters
APIEndpoint='https://dns.api.gandi.net/api/v5'
DOMAIN='xxxx.zz'
SUBDOMAIN='@'
APIKEY='xxxxxxx'

# Get Public IPV4/6
IPV4=$(dig @resolver1.opendns.com ANY myip.opendns.com +short -4)
IPV6=$(dig @resolver1.opendns.com ANY myip.opendns.com +short -6)

# Update IPV4
echo "Update IPV4 for ${DOMAIN} with ${IPV4}"
curl -X PUT -H "Content-Type: application/json" \
            -H "X-Api-Key: $APIKEY" \
            -d "{\"rrset_ttl\": 10800, \"rrset_values\":[\"${IPV4}\"]}" \
            ${APIEndpoint}/domains/${DOMAIN}/records/${SUBDOMAIN}/A
echo ""

# Update IPV6
echo "Update IPV6 for ${DOMAIN} with ${IPV6}"
curl -X PUT -H "Content-Type: application/json" \
            -H "X-Api-Key: $APIKEY" \
            -d "{\"rrset_ttl\": 10800, \"rrset_values\":[\"${IPV6}\"]}" \
            ${APIEndpoint}/domains/${DOMAIN}/records/${SUBDOMAIN}/AAAA
echo ""
