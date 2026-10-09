## Usage

```shell
echo "source $(realpath zsh/load.zprofile)" >> $HOME/.zprofile
echo "source $(realpath zsh/load.zshrc)" >> $HOME/.zshrc
```

## Dependencies

### homebrew

```text
bun
ffmpeg-full
gnupg
nvm
uv
```

### python

```shell
uv python install 3.13
uv venv --python 3.13 $HOME/.venv/py313
```
