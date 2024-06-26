#!/bin/bash

test_device_id=$( xcrun simctl list devices | grep "iPhone 14 Pro" | awk 'match($0, /([A-Z0-9-]{36})/) { print substr($0, RSTART, RLENGTH) }' | head -n 1 )

if [[ -z $test_device_id ]] ; then
  runtime=$( xcrun simctl list runtimes iOS | sed 's/iOS //' | sort -h | tail -1 | sed 's/.* - //' | tr -d '[:space:]' )

  # Get the last alphabetical device (probably something in the iPhone X family, as of 2019-05-31)
  devicetype=$( xcrun simctl list devicetypes iPhone | sort | tail -1 | sed 's/.*(//' | sed 's/).*//' | tr -d '[:space:]' )

  test_device_id=$( xcrun simctl create "iPhone 14 Pro" "${devicetype}" "${runtime}" | tr -d '[:space:]' )
fi

echo $test_device_id
