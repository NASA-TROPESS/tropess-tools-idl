# tropess-tools-idl

How to use TROPESS products from IDL

> Shell scripts are `bash`

## Setup Data Access

See [Data Access](./docs/data-access.md)

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
gdl -args --help  
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

We recommend [Visual Studio Code](https://code.visualstudio.com/) for a streamlined development experience. 



