# Replace env vars in file
Replaces `${TOKENS}` with environment variables in file.

## Usage
#### Inputs
- `filename` File for the replacement.

## Example
```yaml
uses: vafinvr/template-env-action@master
env:
  FOO: foo
  BAR: bar
with:
  filename: /path/to/file
```
