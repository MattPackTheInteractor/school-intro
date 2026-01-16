# Loading Screen Implementation

This project now includes a complete loading screen sequence as requested:

## Flow Sequence

1. **Black Screen with Loading Bar** (`Scenes/LoadingScreen.tscn`)
   - Starts with a black background
   - Displays "Loading..." text with percentage
   - Shows an animated progress bar that fills from 0% to 100%
   - Loading completes in approximately 4 seconds

2. **Main Menu Screen** (`Scenes/MainMenu.tscn`)
   - Appears automatically after loading completes
   - Features a clean dark blue background
   - Includes three buttons:
     - **Start Game**: Launches the Assignment scene
     - **Options**: Placeholder for future settings
     - **Quit**: Exits the application

## How It Works

- The game starts with `LoadingScreen.tscn` (set as main scene in project.godot)
- `LoadingScreen.gd` animates the progress bar over time
- When progress reaches 100%, it automatically transitions to `MainMenu.tscn`
- From the main menu, clicking "Start Game" loads the Assignment scene

## Files Created

- `Scenes/LoadingScreen.tscn` - Loading screen scene
- `Scenes/LoadingScreen.gd` - Loading screen logic
- `Scenes/MainMenu.tscn` - Main menu scene
- `Scenes/MainMenu.gd` - Main menu button handlers

## Testing

Open the project in Godot 4.5 and press F5 to run. You will see:
1. Black screen with loading bar animation
2. Automatic transition to main menu after loading completes
3. Functional menu buttons
