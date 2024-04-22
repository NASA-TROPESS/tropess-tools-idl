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

## Copyright and Licensing Info
Copyright (c) 2023-24 California Institute of Technology (“Caltech”). U.S. Government sponsorship acknowledged. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided
that the following conditions are met:

• Redistributions of source code must retain the above copyright notice, this list of conditions and
the following disclaimer.

• Redistributions in binary form must reproduce the above copyright notice, this list of conditions
and the following disclaimer in the documentation and/or other materials provided with the
distribution.

• Neither the name of Caltech nor its operating division, the Jet Propulsion Laboratory, nor the
names of its contributors may be used to endorse or promote products derived from this software
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Open Source License Approved by Caltech/JPL
APACHE LICENSE, VERSION 2.0
• Text version: https://www.apache.org/licenses/LICENSE-2.0.txt
• SPDX short identifier: Apache-2.0
• OSI Approved License: https://opensource.org/licenses/Apache-2.0
