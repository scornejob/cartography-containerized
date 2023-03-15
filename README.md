 The image offered by Cartography didn't work for me because architecture... So I'm building my own:

 `❯ docker build -t cartography:seba .`

 which is later referenced in the compose file.

 Cartography requires AWS credentials in `~/.aws`, so you should write your credentials into the
 `aws_config` file, and docker compose will mount it in the right place (which isn't working right now)
