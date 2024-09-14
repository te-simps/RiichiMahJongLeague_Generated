#!/bin/bash

# Root directory for your application
APP_DIR="RiichiMahJongLeague"

# Create the root directory
mkdir -p $APP_DIR

# Create public folder and subfolders
mkdir -p $APP_DIR/public/{css,js,images}

# Create src folder and subfolders
mkdir -p $APP_DIR/src/{controllers,models,views/{layouts,game,player,league},services}

# Create config folder
mkdir -p $APP_DIR/config

# Create scripts folder
mkdir -p $APP_DIR/scripts

# Create logs folder
mkdir -p $APP_DIR/logs

# Create tests folder and subfolders
mkdir -p $APP_DIR/tests/{controllers,models,services}

# Create vendor folder (if you use Composer for dependencies)
mkdir -p $APP_DIR/vendor

# Create the main entry point and default files in public directory
touch $APP_DIR/public/index.php
touch $APP_DIR/public/css/styles.css
touch $APP_DIR/public/js/scripts.js

# Create controller, model, and view placeholders
touch $APP_DIR/src/controllers/{GameController.php,PlayerController.php,LeagueController.php}
touch $APP_DIR/src/models/{Game.php,Player.php}
touch $APP_DIR/src/views/game/{game_form.php,game_history.php}
touch $APP_DIR/src/views/player/{player_profile.php,player_form.php}
touch $APP_DIR/src/views/league/league_table.php

# Create services files
touch $APP_DIR/src/services/{PlayerService.php,GameService.php}

# Create config files
touch $APP_DIR/config/{db.php,config.php}

# Create a log file
touch $APP_DIR/logs/error.log

# Create example test files
touch $APP_DIR/tests/controllers/PlayerControllerTest.php
touch $APP_DIR/tests/models/PlayerTest.php
touch $APP_DIR/tests/services/PlayerServiceTest.php

# Create a .htaccess file (if needed)
touch $APP_DIR/.htaccess

# Optional: Create a cleanup shell script in the scripts directory
touch $APP_DIR/scripts/cleanup.sh

# Set permissions to make the script executable
chmod +x $APP_DIR/scripts/cleanup.sh

# Done
echo "Folder structure for '$APP_DIR' created successfully!"
