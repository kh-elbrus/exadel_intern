# SSH Troubleshooting

--- 

### Situation

-- Your PC is connected to your router (with access to the internet) via WIFI.
And your realize that your PC doesn't have ssh access to the your server on the internet.
 

## Solving steps

To achieve our goal, we have to understand the cause of the error or at least build some hypotheses as to why exactly we cannot access the remote server via ssh.

### Step-1. Ask google!

Usually when we connect via ssh to a remote server, the terminal shows us all kinds of information about the process. 
If any error occurs, it will be displayed in the terminal. This error is a starting point for troubleshooting.

### Step-2. Identify the real problem!

In my case the most popular problems were:

- connection timeout/refused 
- wrong credentials
- permisions denied

#### Connection timeout/refused

- Check out that the host IP address and port number is correct
- Check out the firewall rules.
- Verify that the service is running properly

#### Wrong credentials

- Check out that the username or password is correct
- Check out that the ssh keys (public/private) are valid

#### Permisions denied

- Make sure PasswordAuthentication and PubkeyAuthentication ends with `yes`
- Make sure ChallengeResponseAuthentication and PermitRootLogin ends with `no`




