@import url("/home/floki/.cache/wal/colors-waybar.css");
* {
    border: none;
    border-radius: 0;
    font-family: "SF Pro Display", "JetBrainsMono Nerd Font Propo";
    font-size: 14px;
    min-height: 0;
    margin: 0;
    padding: 0;
}

window#waybar {
    background: transparent;
}

tooltip {
  background: rgba(43, 48, 59, 0.5);
  border: 1px solid rgba(100, 114, 125, 0.5);
}

tooltip label {
  color: white;
}

#workspaces {
    margin: 0 10px;
    background-color: transparent;
    transition: all 1050ms ease-in-out;
}

#workspaces button {
    transition: all 200ms ease-in-out;
    padding: 0 5px;
    margin: 0 2px;
    background: alpha(@color1, 0.8);
    border-radius: 5px;
}

#workspaces button.active {
    background: @color7;
    color: #121212;
    padding: 0 15px;
    border-radius: 100px;
    transition: all 200ms ease-in-out;
    font-weight: 700;
}

button:hover {
    background: inherit;
    box-shadow: inset 0 -3px #ffffff;
}

#network,
#pulseaudio,
#clock,
#custom-power,
#custom-pacman,
#custom-media,
#custom-home-folder {
    background-color: #b7d8aa;
    color: #121212;
    padding: 0 10px;
    margin: 0 5px;
    border-radius: 100px;
}

#clock {
    background-color: @color14;
}

#custom-pacman {
    background-color: @color12;
}

#custom-media {
    background-color: @color7;
}

#custom-home-folder {
    background-color: @color13;
}

#pulseaudio {
    background-color: @color11;
}

#network {
    background-color: @color8;
}

#custom-power {
    background-color: @color9;
}
