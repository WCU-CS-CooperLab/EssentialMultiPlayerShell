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

# Chapter 5

## Starting the match

The QuizServer.md's `start_game()` func is listed as:

```gdscript
@rpc("any_peer", "call_remote")
func start_game():
    get_tree().change_scene_to_file(quiz_screen_scene_path)
    rpc("start_game")
```

However, the scene change makes the rpc call fail.

Instead, the order should be swapped, it should be:

```gdscript
@rpc("any_peer", "call_remote")
func start_game():
    rpc("start_game")
    get_tree().change_scene_to_file(quiz_screen_scene_path)
```

## A question is lost

In QuizScreenServer.gd, the _ready() function has 3 lines, however the second 2 lines are not needed because of the `_on_timer_timout` callback for the timeout() signal of the timer.

All that is needed is:

```gdscript
func _ready():
    timer.start(3.0)
```
