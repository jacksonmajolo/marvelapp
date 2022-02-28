# Marvel app

Aplicativo criado usando devcontainer, internacionalização, componentes nativos, responsividade e etc.

## Requisitos

Docker

Visual Studio Code

## Setup

Instalar extensão do vscode [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Comandos

Limpezas
```bash
flutter clean
```

Dependências
```bash
flutter pub get
```

Testes
```bash
flutter test
```

Análises
```bash
flutter analyze
```

Gerador de arquivos
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

Renomear app
```bash
flutter pub run flutter_app_name
```

Ícones app
```bash
flutter pub run flutter_launcher_icons:main
```

Tela de abertura nativa app
```bash
flutter pub run flutter_native_splash:create
```
