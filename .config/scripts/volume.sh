#!/bin/bash

get_volume() {
	volume=$(pamixer --get-volume)
	echo "$volume"
}

inc_output_volume() {
  pamixer -i 5
}

dec_output_volume() {
  pamixer -d 5
}

inc_input_volume() {
  pamixer --default-source -i 5
}

dec_input_volume() {
  pamixer --default-source -d 5
}

toggle_output_mute() {
  if ["$(pamixer --get-mute)" == "false"]; then
    pamixer -m
  elif ["$(pamixer --get-mute)" == "true"]; then
    pamixer -u
  fi
}

toggle_input_mute() {
  if ["$(pamixer --default-source --get-mute)" == "false"]; then
    pamixer --default-source -m
  elif ["$(pamixer --default-source --get-mute)" == "true"]; then
    pamixer -u --default-source u
  fi
}

if [[ "$1" == "--inc-output" ]]; then
	inc_output_volume
elif [[ "$1" == "--dec-output" ]]; then
	dec_output_volume
elif [[ "$1" == "--inc-input-volume" ]]; then
	inc_input_volume
elif [[ "$1" == "--dec-input-volume" ]]; then
	dec_input_volume
elif [[ "$1" == "--toggle-output-mute" ]]; then
	toggle_output_mute
elif [[ "$1" == "--toggle-input-mute" ]]; then
	toggle_input_mute
else
	get_volume
fi
