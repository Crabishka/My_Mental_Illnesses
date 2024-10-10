## STEPISH

# Проснулись, улыбнулись и сделали
    dart pub global activate serverpod_cli
    export PATH="$PATH":"$HOME/.pub-cache/bin"
    serverpod generate
    serverpod create-migration
    docker compose up --build --detach
    dart bin/main.dart --apply-migrations

