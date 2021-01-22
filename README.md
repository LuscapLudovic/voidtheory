# voidtheory

## Installation

1. Créer un fichier .env en se basant sur le .env.example

    ```
    DATABASE_URL=postgres://username:password@localhost/voidtheory
    ```
    
2. Installer diesel CLI.

    ```
    cargo install diesel_cli --no-default-features --features postgres
    ```
    
3. Installer la base de données.

    ```
    diesel setup
    ```
    
4. Lancer la migration de la base.

    ```
    diesel migration run
    ```
    
5. Compiler le projet.

    ```
    cargo build
    ```
    
6. Lancer le projet.

    ```
    cargo run
    ```
    Vous pouvez le tester à l'adresse http://127.0.0.1:8000/position
    

