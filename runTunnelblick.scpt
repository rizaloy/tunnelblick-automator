on run arg
  tell application "Tunnelblick"
    connect arg
    get state of first configuration where name = arg
    repeat until result = "CONNECTED"
      delay 1
      get state of first configuration where name = arg
    end repeat
  end tell
end run
