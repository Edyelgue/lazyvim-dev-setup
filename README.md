# 💤 LazyVim Dev Setup

Configuração personalizada do Neovim baseada no LazyVim, focada em desenvolvimento fullstack.

---

## 📦 Requisitos

Antes de usar esta configuração, instale as dependências abaixo.

---

## ⚙️ Instalação via Scoop (Windows)

### 1. Instalar Scoop (caso ainda não tenha)

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
```

---

### 2. Adicionar buckets

```powershell
scoop bucket add main
scoop bucket add extras
scoop bucket add versions
scoop bucket add nerd-fonts
```

---

### 3. Dependências principais

```powershell
scoop install neovim git ripgrep fd curl
```

---

### 4. Ferramentas recomendadas

```powershell
scoop install lazygit fzf
```

---

### 5. Compilador C (Treesitter)

```powershell
scoop install gcc
```

---

### 6. Make

```powershell
scoop install make
```

---

### 7. Node.js

```powershell
scoop install nodejs
```

---

### 8. Python

```powershell
scoop install python
pip install pynvim
```

---

### 9. PHP + Composer

```powershell
scoop install php composer
```

---

### 10. Java (Spring Boot)

```powershell
scoop install openjdk maven
```

---

### 11. .NET (C#)

```powershell
scoop install dotnet-sdk
```

---

### 12. Nerd Font

```powershell
scoop install CascadiaCode-NF
```

---

## 🚀 Instalação da Configuração

```powershell
# Backup (opcional)
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak -ErrorAction SilentlyContinue
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak -ErrorAction SilentlyContinue

# Clonar repositório
git clone https://github.com/Edyelgue/lazyvim-dev-setup $env:LOCALAPPDATA\nvim

# Abrir Neovim
nvim
```

---

## 🔌 Instalação de LSPs via Mason

Após abrir o Neovim, execute:

```vim
:Mason
```

### Instalar todos os LSPs manualmente

```vim
:MasonInstall intelephense phpactor tailwindcss-language-server emmet-ls eslint-lsp tsserver pyright jdtls omnisharp
```

---

## 🧠 LSPs por tecnologia

### 🐘 PHP / Laravel

* intelephense
* phpactor

### 🌐 Node.js / TypeScript

* tsserver
* eslint-lsp
* emmet-ls
* tailwindcss-language-server

### 🐍 Python

* pyright

### ⚙️ C# (.NET)

* omnisharp

### ☕ Java (Spring Boot)

* jdtls

---

## 🔍 Pós-instalação

Dentro do Neovim:

```vim
:Lazy
:LazyHealth
:Mason
```

---

## 📊 Resumo das Dependências

| Ferramenta | Uso                   |
| ---------- | --------------------- |
| Neovim     | Editor                |
| Git        | Plugins               |
| ripgrep    | Busca                 |
| fd         | Navegação de arquivos |
| gcc        | Compilação Treesitter |
| nodejs     | LSPs JS               |
| python     | Plugins               |
| php        | Backend Laravel       |
| composer   | Gerenciador PHP       |
| java       | Backend Spring        |
| dotnet     | Backend C#            |
| lazygit    | Git UI                |
| fzf        | Fuzzy finder          |

---

## 💡 Observações

* LSPs são gerenciados automaticamente pelo Mason
* Plugins ficam em `lua/plugins/`
* Configurações personalizadas podem ser ajustadas conforme necessidade

---

## 🧑‍💻 Autor

Edyelgue Carneiro 🚀
