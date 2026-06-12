# An opiniated Godot 4.6.3 template for game jams

The goal is to save a lot of time on _polish_ tasks that are necessary for a good looking entry and often done in the last hours.  
That time would hopefully be used to further polish the core of the game.

I tried to keep it minimal, but couldn't resist creating _manager_ scripts to keep it modular and easy to work with.

It relies heavily on **signals** : nodes are only aware of their children.

## ✨ Features
- Title screen (with optional how to instructions)
- Main scene
  - GameManager
    - Game state : init, reset, game over
    - Score 
  - UI scene
    - Game Over screen
    - Score
    - Settings menu
  - AudioManager
    - Background music
    - SFX 
  - SettingsManager
    - Handles non UI settings menu logic 
- Default project settings:
  - compatibility renderer (for web)
  - window stretch

## 📂 Project structure
A simple directory with folders for three resources:
- assets
- scenes
- scripts

## 🤝 Contribution
Feel free to fork and make pull requests 🙂
