#!/bin/sh -l

echo "Github Actions RDChoke-action executing"

export PROJECT_ID=$1
export ORG_ID=$2
export RDCHOKE_METADATA_DIRECTORY=$3
export RDCHOKE_OUTPUT_DIRECTORY=$4
export EKG_KGIRI_BASE=$5
export RDCHOKE_DB_NAME=$6
export RDCHOKE_DB_ENDPOINT_URL=$7
          
exec /home/ekgprocess/rdchoke/bin/rdchoke \
  --project "${PROJECT_ID}" \
  --organization "${ORG_ID}" \
  --path "${RDCHOKE_METADATA_DIRECTORY}" \
  --output "${RDCHOKE_OUTPUT_DIRECTORY}" \
  --ekg-base-iri "${EKG_KGIRI_BASE}" \
  --database "${RDCHOKE_DB_NAME}" \
  --endpoint "${RDCHOKE_DB_ENDPOINT_URL}"
