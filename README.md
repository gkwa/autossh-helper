# autossh-helper

```sh
[demo@demos-MacBook-Pro:/tmp]$ python aus 3205 3086 2086
lsof -t -i tcp@localhost:3205 | xargs kill -SIGTERM; autossh -M 0 -q -f -N -o "ServerAliveInterval 60" -o "ServerAliveCountMax 3" -L 3205:10.0.3.205:3389 dev
lsof -t -i tcp@localhost:3086 | xargs kill -SIGTERM; autossh -M 0 -q -f -N -o "ServerAliveInterval 60" -o "ServerAliveCountMax 3" -L 3086:10.0.3.86:3389 dev
lsof -t -i tcp@localhost:2086 | xargs kill -SIGTERM; autossh -M 0 -q -f -N -o "ServerAliveInterval 60" -o "ServerAliveCountMax 3" -L 2086:10.0.2.86:3389 dev
```
