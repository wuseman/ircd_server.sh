# Simple IRC Server (`ircd.sh`)

## Overview

`ircd.sh` is a minimalist IRC server implemented as a Bash script, designed for testing IRC clients or demonstrating basic IRC interactions. It responds to standard IRC protocol commands such as `PING`, `NICK`, `USER`, `JOIN`, and `PRIVMSG`.

## Features

- **Ping-Pong Handling**: Responds to `PING` requests from clients.
- **Nick Management**: Handles basic nickname assignments.
- **User Registration**: Provides a welcome message upon user connection.
- **Channel Joining**: Allows clients to join channels and returns basic channel information.
- **Private Messaging**: Enables simple message exchange between users or channels.

## Requirements

- Bash environment (Unix/Linux/macOS)
- Netcat (`nc`) or a similar tool to handle TCP connections

## Usage

Make the script executable:

```bash
chmod +x ircd.sh
```

* Start the IRC server listening on a specified port (e.g., 6667):

```bash
nc -lkp 6667 -e ./ircd.sh
```

* Connect using your favorite IRC client to localhost on the specified port.

## License

This software is licensed under the WTFPL (Do What The Fuck You Want To Public License).

## Author

wuseman@bugcrowdninja.com
