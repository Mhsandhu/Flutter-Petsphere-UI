<div align="center">

<img src="https://api.iconify.design/mdi:paw.svg?color=%2310B981&width=90" width="90" alt="PetSphere logo" />

# PetSphere

### Find • Love • Adopt

A beautifully crafted Flutter onboarding & authentication flow for a pet marketplace app — built with clean widget composition, smooth navigation, and a warm, trustworthy design language.

<br/>

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Android Studio](https://img.shields.io/badge/Android_Studio-3DDC84?style=for-the-badge&logo=androidstudio&logoColor=white)
![VS Code](https://img.shields.io/badge/VS_Code-007ACC?style=for-the-badge&logo=visualstudiocode&logoColor=white)
![Figma](https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)

</div>

<br/>

## Overview

PetSphere is a UI-focused Flutter project that recreates a modern pet adoption & marketplace app experience. It walks the user through an animated onboarding sequence, a branded splash screen, and a polished sign-in screen — with every layout built from Flutter's core building blocks (`Stack`, `Row`, `Column`, `PageView`, `Positioned`) rather than pre-made packages, to keep the widget tree transparent and easy to learn from.

<br/>

## Screens
<p align="center">
  <img src="https://github.com/user-attachments/assets/a8efd675-16e5-4e10-9743-1e65f83f5772" width="200">
  <img src="https://github.com/user-attachments/assets/08b5754b-da63-4e6b-99d3-40e840efa542" width="200">
  <img src="https://github.com/user-attachments/assets/ff23b1ed-95da-48e1-a1bd-530acbcc6809" width="200">
  <img src="https://github.com/user-attachments/assets/0ce20cd2-355f-42cc-b803-b6c517298487" width="200">
</p>






## Features

<img src="https://api.iconify.design/mdi:image-multiple-outline.svg?color=%2310B981&width=20" width="18" valign="middle" /> &nbsp;**Animated onboarding carousel** — `PageView` with a custom animated dot indicator, `Skip` shortcut, and layered `Stack` hero imagery.

<img src="https://api.iconify.design/mdi:gesture-tap-button.svg?color=%2310B981&width=20" width="18" valign="middle" /> &nbsp;**Interactive splash screen** — gradient background with a tap-to-continue reveal animation.

<img src="https://api.iconify.design/mdi:shield-check-outline.svg?color=%2310B981&width=20" width="18" valign="middle" /> &nbsp;**Full authentication UI** — email & password fields with a visibility toggle, "Forgot Password", and social sign-in buttons (Google, Facebook).

<img src="https://api.iconify.design/mdi:routes.svg?color=%2310B981&width=20" width="18" valign="middle" /> &nbsp;**Named route navigation** — clean, declarative transitions between Splash → Onboarding → Login using Flutter's `Navigator`.

<img src="https://api.iconify.design/mdi:responsive.svg?color=%2310B981&width=20" width="18" valign="middle" /> &nbsp;**Responsive layouts** — built entirely with `MediaQuery`-aware sizing so it adapts across device widths.

<img src="https://api.iconify.design/mdi:palette-outline.svg?color=%2310B981&width=20" width="18" valign="middle" /> &nbsp;**Consistent design system** — a shared green/teal palette, rounded components, and reusable custom widgets.

<br/>

## Tech Stack

| | |
|---|---|
| <img src="https://api.iconify.design/logos:flutter.svg" width="24"/> | **Flutter** — cross-platform UI toolkit |
| <img src="https://api.iconify.design/logos:dart.svg" width="24"/> | **Dart** — application language |
| <img src="https://api.iconify.design/mdi:material-design.svg?color=%23757575" width="24"/> | **Material Design** — base component library |
| <img src="https://api.iconify.design/logos:android-icon.svg" width="24"/> | **Android Studio / VS Code** — development environment |
| <img src="https://api.iconify.design/logos:figma.svg" width="24"/> | **Figma** — UI/UX design reference |

<br/>

## Widgets & Concepts Used

```
Stack            → layering images, gradients & floating UI elements
Row / Column      → structuring headers, form fields & button groups
PageView          → swipeable onboarding screens
Positioned        → precise placement of overlays (Skip button, indicators)
Navigator         → named-route based screen transitions
TextFormField     → validated email & password inputs
GestureDetector    → tap-to-continue splash interaction
AnimatedContainer  → smooth page-indicator transitions
SafeArea           → notch & status-bar safe layouts
```

<br/>

## Project Structure

```
lib/
├── main.dart
├── routes/
│   └── app_routes.dart
├── screens/
│   ├── splash_screen.dart
│   ├── onboarding_screen.dart
│   └── login_screen.dart
├── widgets/
│   ├── onboarding_page.dart
│   ├── page_indicator.dart
│   ├── custom_text_field.dart
│   └── social_login_button.dart
└── theme/
    └── app_theme.dart
```

<br/>

## Getting Started

**Prerequisites**

<img src="https://api.iconify.design/logos:flutter.svg" width="16" valign="middle"/> Flutter SDK (3.x or higher) &nbsp;•&nbsp; <img src="https://api.iconify.design/logos:dart.svg" width="16" valign="middle"/> Dart &nbsp;•&nbsp; An emulator or physical device

```bash
# Clone the repository
git clone https://github.com/your-username/petsphere.git

# Navigate into the project
cd petsphere

# Install dependencies
flutter pub get

# Run the app
flutter run
```

<br/>

## Roadmap

- [ ] Pet listing & search screen
- [ ] Seller profile & verification badges
- [ ] In-app chat between buyer and seller
- [ ] Favorites / wishlist
- [ ] Push notifications

<br/>

## Contributing

Contributions, issues, and feature requests are welcome. Feel free to check the [issues page](../../issues) or open a pull request.

<br/>

## License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

<br/>

<div align="center">
<sub>Built with <img src="https://api.iconify.design/mdi:heart.svg?color=%2310B981&width=14" width="12" valign="middle"/> using Flutter</sub>
</div>
