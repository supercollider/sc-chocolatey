## testing

```bash
# create package
cpack
```

```bash
# install dev package, specifying local folder and chocolatey.org as
# package sources (for git dependency)
choco install supercollider -f -s "'.;https://chocolatey.org/api/v2/'"
```