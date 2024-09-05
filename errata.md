# Errata

# Chapter 1

1. for the MainMenu scene. Make sure that when adding the script you select the [01.setting-up-a-server/MainMenu.gd](source/01.setting-up-a-server/MainMenu.gd) script that is already there. When loading the client or server scene, make sure to use the variables `client_scene` and `server_scene`, and drag the appropriate scenes to the inspector so that they are linked correctly.
 
# Chapter 2

## Sending players' credentials

Step 12 should not say "if the token is not present, display an error message to the player: `error_label.text = 'logged!!'`".

Instead it should read:

display a success message to the player: `error_label.text = "Success: Logged In!!"`

## Loading a fake database

all code that reads `fake_database` should just be `database`

## calls to .wait()

When the book says to use the while loops with `packet.wait()`, `if` should be used instead, then the `break` statements become unnecessary.

