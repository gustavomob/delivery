# 🍔 Delivery App

Aplicativo de delivery de comida desenvolvido em **Flutter**, com suporte para Android e iOS.  
Permite que usuários descubram restaurantes, visualizem pratos com detalhes, adicionem itens ao carrinho e finalizem pedidos de forma rápida e intuitiva.

---

## 🛠️ Tecnologias Utilizadas

- 📱 [**Flutter**](https://docs.flutter.dev) – Framework principal
- 🧠 [**Provider**](https://pub.dev/packages/provider) – Gerenciamento de estado
- 🏷️ [**Badges**](https://pub.dev/packages/badges) – Indicadores visuais no carrinho
- 🖼️ [**Flutter SVG**](https://pub.dev/packages/flutter_svg) – Suporte para imagens SVG
- 🌐 [**URL Launcher**](https://pub.dev/packages/url_launcher) – Abrir links externos
- ⭐ [**Font Awesome**](https://pub.dev/packages/font_awesome_flutter) – Ícones personalizados
- 🍏 [**Cupertino Icons**](https://pub.dev/packages/cupertino_icons) – Ícones nativos do iOS

---

## ✨ Funcionalidades

- 🔎 **Busca de pratos por categoria**
- 🏆 **Listagem de restaurantes bem avaliados**
- 🍽️ **Detalhamento de cada prato** (imagem, nome, descrição e preço)
- 🛒 **Carrinho de compras com contador e resumo**
- 💳 **Tela de checkout com pagamento, endereço e valor total**
- ✅ **Confirmação de pedido simulada**

---

## 🎯 Estrutura do Projeto
```
lib/
├── data/ # Dados simulados (ex: restaurantes)
├── ui/
│ ├── _core/ # Estilos globais, tema, providers
│ ├── splash/ # Tela inicial (SplashScreen)
│ ├── home/ # Página principal com banners e categorias
│ ├── restaurant/ # Listagem e detalhes dos restaurantes
│ ├── bag/ # Carrinho de compras
│ └── checkout/ # Tela de finalização de pedido
└── main.dart # Inicialização da aplicação
```

- Toda a lógica de estado está separada em `providers`, usando o `MultiProvider` no `main.dart`.

---

## 📱 Demonstração

https://github.com/user-attachments/assets/52618799-8650-4af3-bbd2-353da366f80f

> 💡 *Gravação de tela do app em funcionamento.*

[Gravação de tela de 16-04-2025 19:29:37.webm](https://github.com/user-attachments/assets/52618799-8650-4af3-bbd2-353da366f80f)

---

## 🚀 Como rodar o projeto

1. Clone o repositório:
```
git clone https://github.com/seu-usuario/delivery
cd delivery
```
2. Instale as dependências:
```
flutter pub get
```

3. Execute no emulador ou dispositivo:
```
flutter run
```

📌 Observações
Este projeto usa dados simulados (mock) para foco em UI/UX e lógica de fluxo de pedidos.

Pronto para ser integrado com uma API backend ou base de dados real.
