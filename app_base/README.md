# App Base - Flutter 3.x

Um projeto Flutter base com Material 3, internacionalização e suporte multiplataforma.

## 🚀 Características

- **Flutter 3.x** com suporte multiplataforma
- **Material 3** Design System
- **Internacionalização** (pt-BR, en-US)
- **Temas** Light/Dark/System
- **Suporte multiplataforma**: Android, iOS, Web, Windows, macOS, Linux

## 📱 Plataformas Suportadas

- ✅ Android
- ✅ iOS  
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🛠️ Configuração

### Pré-requisitos

- Flutter SDK 3.0.0 ou superior
- Dart SDK 3.0.0 ou superior

### Instalação

1. Clone o repositório:
```bash
git clone <repository-url>
cd app_base
```

2. Instale as dependências:
```bash
flutter pub get
```

3. Gere os arquivos de localização:
```bash
flutter gen-l10n
```

### Executar o projeto

```bash
# Executar no dispositivo/emulador padrão
flutter run

# Executar na web
flutter run -d chrome

# Executar no Windows
flutter run -d windows

# Executar no macOS
flutter run -d macos

# Executar no Linux
flutter run -d linux
```

## 🎨 Material 3

O projeto utiliza o Material 3 Design System com:

- **Color Schemes** personalizados para light e dark themes
- **Componentes Material 3**: Cards, Buttons, Chips, TextFields
- **Typography** seguindo as diretrizes do Material 3
- **Elevation** e **Surface** tokens

## 🌍 Internacionalização

### Idiomas Suportados

- **Português (pt-BR)** - Padrão
- **English (en-US)**

### Adicionando Novos Idiomas

1. Adicione o arquivo `.arb` em `lib/l10n/`
2. Execute `flutter gen-l10n`
3. Adicione o locale em `main.dart`

### Exemplo de Uso

```dart
final l10n = AppLocalizations.of(context)!;
Text(l10n.welcome)
```

## 🎭 Sistema de Temas

### Modos de Tema

- **Light** - Tema claro
- **Dark** - Tema escuro  
- **System** - Segue o tema do sistema

### Personalização

Os temas podem ser personalizados em `lib/theme/app_theme.dart`:

```dart
static ThemeData get lightTheme {
  return ThemeData(
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    // ... outras configurações
  );
}
```

## 📁 Estrutura do Projeto

```
lib/
├── l10n/                 # Arquivos de localização
│   ├── app_en.arb
│   └── app_pt.arb
├── screens/              # Telas da aplicação
│   ├── home_screen.dart
│   └── settings_screen.dart
├── theme/                # Configurações de tema
│   ├── app_theme.dart
│   └── theme_provider.dart
└── main.dart            # Ponto de entrada
```

## 🔧 Dependências

- `flutter` - SDK do Flutter
- `flutter_localizations` - Suporte à internacionalização
- `provider` - Gerenciamento de estado
- `cupertino_icons` - Ícones do iOS

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.

## 🤝 Contribuição

Contribuições são bem-vindas! Por favor, abra uma issue ou pull request.

## 📞 Suporte

Para dúvidas ou problemas, abra uma issue no repositório.




