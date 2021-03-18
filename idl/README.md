# IDL Samples

> All shell scripts are `bash`

## Setup

For IDL and GDL installation see [IDL or GDL](./idl-or-gdl.md)

## Using GDL

Configure your environment:

```bash
source configure-gdl.sh
```

### Run

```bash
gdl -q -e match_observations -args --products=CO,O3,PAN
```

### Debug

Start GDL :

```bash
gdl -args --products=CO,O3,PAN
```

Compile programs:

```i
.r make.pro
```

Run:

```idl
match_observations
```

