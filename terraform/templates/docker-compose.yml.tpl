version: "3"
services:
  broker:
    image: "${alephium_image}"
    restart: always
    ports:
      - 9973:9973/tcp
      - 9973:9973/udp
      - 10973:10973/tcp
      - 12973:12973/tcp
    security_opt:
      - no-new-privileges:true
    volumes:
      - ./alephium-data:/alephium-home/.alephium
      - ./alephium-wallets:/alephium-home/.alephium-wallets
    labels:
      - org.label-schema.group=alephium
    logging:
      driver: "json-file"
      options:
        max-file: "10"
        max-size: 100m
