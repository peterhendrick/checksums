These are two simple bash scripts to easily run checksums against one or multiple files in the same command.

The first script, sha256.sh, will simply output the sha256 hash of the files specified in the argument. It will loop over all arguments to do this.

The second script will take many different common hashing algorithms and output the hashes of the files specified in the arguments. It will loop over all arguments to do this.

Usage, from within the downloaded folder containing checksums.sh and sha256.sh,

```bash
./sha256.sh <pathToFile1> <pathToFile2> ... <pathToFileN>
```

```bash
./checksums.sh <pathToFile1> <pathToFile2> ... <pathToFileN>
```

