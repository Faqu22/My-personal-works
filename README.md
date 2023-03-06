README
Este repositorio contiene mi configuración de Neovim, incluyendo plugins y teclas rápidas personalizadas.

Instalación de Neovim
Para instalar Neovim en tu sistema operativo, sigue las instrucciones en la documentación oficial de Neovim.

Instalación de Plugins
La lista de plugins que utilizo está en el archivo init.vim. Para instalarlos, primero necesitas instalar el plugin manager vim-plug. Puedes hacerlo ejecutando el siguiente comando en tu terminal:

ruby
Copy code
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
Después de instalar vim-plug, abre Neovim y ejecuta el comando :PlugInstall para instalar los plugins especificados en init.vim. Los plugins se instalarán en la carpeta ~/.local/share/nvim/plugged.

Teclas Rápidas
En el archivo init.vim también encontrarás una lista de teclas rápidas personalizadas que he creado para facilitar mi flujo de trabajo en Neovim. Estas teclas rápidas incluyen:

F4: Abre la ventana NERDTree
F1: Guarda y sale de Neovim
F2: Ejecuta betty para revisar el código
Siéntete libre de ajustar estas teclas rápidas a tus preferencias personales. También puedes agregar nuevas teclas rápidas en init.vim siguiendo el mismo formato.

Guardar en ~/.config/nvim/init.vim
Es importante que guardes el archivo init.vim en la ruta ~/.config/nvim/init.vim para que Neovim pueda leerlo correctamente. Si ya tienes un archivo init.vim en esa ruta, asegúrate de hacer una copia de seguridad antes de reemplazarlo con mi archivo init.vim.
