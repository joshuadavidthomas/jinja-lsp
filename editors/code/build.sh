
echo "export const binaryName = '$1';" > client/src/binaryName.ts

cp -r "/home/uros/Downloads/lsp/$1" ./media/

pnpm run vscode:prepublish && vsce package -o "$2.vsix" --target $3

rm -rf "./media/$1"
mv "$2.vsix" ~/Downloads/j2
