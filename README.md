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

### 12. Golang (necessário para sqls)

```powershell
scoop install go
```

---

### 13. Nerd Font

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

### Instalar todos os LSPs

```vim
:MasonInstall intelephense phpactor tailwindcss-language-server emmet-ls eslint-lsp tsserver pyright jdtls omnisharp sqls
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

### 🗄️ SQL

* sqls (requer Go)

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

| Ferramenta | Uso                  |
| ---------- | -------------------- |
| Neovim     | Editor               |
| Git        | Plugins              |
| ripgrep    | Busca                |
| fd         | Navegação            |
| gcc        | Treesitter           |
| nodejs     | LSP JS               |
| python     | Plugins              |
| php        | Backend              |
| composer   | Dependências PHP     |
| java       | Spring               |
| dotnet     | C#                   |
| go         | Necessário para sqls |
| lazygit    | Git UI               |
| fzf        | Busca                |
| sqls       | LSP SQL              |

---

## 💡 Observações

* LSPs são gerenciados automaticamente pelo Mason
* Plugins ficam em `lua/plugins/`
* `sqls` suporta MySQL, PostgreSQL, SQL Server, etc
* Necessário configurar conexão via `.sqls.yml`

---

## 🧑‍💻 Autor

Edyelgue Carneiro 🚀
