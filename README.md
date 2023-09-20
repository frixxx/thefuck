# simple-select

A zsh plugin for a very basic select functionality.

You provide an array of strings and select one from the shown list with the keyboard.
On Enter the selected string will be output.

![](simple-select.gif)

## Install

Using the [Zap](https://www.zapzsh.org/) minimal zsh plugin manager, add the following to your `.zshrc`

```sh
# Install plugin
ZAP_GIT_PREFIX="git@dev.voepel.ruhr:" plug "zap-zsh/simple-select"
```

## Usage

```zsh
arr=( "a" "b" "c" )

./bin/simple-select "${arr[@]}"

echo "${arr[@]:$?:1}"
```
> **ATTENTION:** Use `${arr[@]:$?:1}` to interoperate between bash and zsh shells.
> Please do not use something in the style of `${arr[$i]}` because you might get the wrong values!
> ZSH and Bash start at a different index in arrays

## License

TBD
