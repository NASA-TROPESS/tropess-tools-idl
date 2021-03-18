# tropess-tools-idl
> All shell scripts are `bash`

## Setup Data Access

To get more information on downloading process:
[Overview of GES DISC Data Access](https://disc.gsfc.nasa.gov/data-access)

### Account

1. You must create an account for data access:
   [create account](https://wiki.earthdata.nasa.gov/display/EL/How+To+Register+For+an+EarthData+Login+Profile)
2. Link account to GES DISC: [link account](https://disc.gsfc.nasa.gov/earthdata-login)

### Setup

Create a .netrc file in your home directory.

 ```sh
 cd ~ 
 touch .netrc
 ```

Populate .netrc file with credentials (where <uid> is your user name and <password> is your Earthdata Login password without the brackets):

Own Account:

 ```sh
 echo 'machine urs.earthdata.nasa.gov login <uid> password <password>' >> .netrc 
 ```

Create a cookie file. This file will be used to persist sessions across calls to wget.

 ```sh
 cd ~ 
 touch .urs_cookies
 ```

> Note: you may need to re-create .urs_cookies in case you have already executed wget without valid authentication.

Change permissions to .netrc and .urs_cookies files (so only you can access it):

 ```sh
 chmod 0600 .netrc .urs_cookies
 ```

Test:

```bash
curl -n -c ~/.urs_cookies -b ~/.urs_cookies -LJO --url <todo: add url here>
```

## IDL or GDL

If you have a working installation of IDL no additional setup is needed. Otherwise for $3,500+ you can buy and download IDL from [Harris Geospatial Solutions](https://www.l3harrisgeospatial.com/).

Alternatively you may choose to build the [GDL (GNU Data Language)](./docs/gdl.md).  That is a bit more involved but also it is free.

## Run

### GDL

Configure your environment:

```bash
source gdl.sh
```

Run `match_observations`:

```bash
gdl -q -e match_observations -args --help
```

## Debug

### GDL

Configure your environment:

```bash
source gdl.sh
```

Start GDL interactive prompt with the command line arguments you want to pass to the program you are debugging, , e.g. for  `match_observations`:

```bash
gdl -args \
  --product1 ~/home/tropess/
```

Compile all programs:

```i
.r make.pro
```

Start a program, e.g.  `match_observations`:

```idl
match_observations
```

## Visual Studio Code

We also recommend using [Visual Studio Code](https://code.visualstudio.com/) for a streamlined development experience. 



