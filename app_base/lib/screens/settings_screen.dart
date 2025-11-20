import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../theme/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final themeProvider = ThemeProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Theme Section
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.theme,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: const Icon(Icons.light_mode),
                    title: Text(l10n.lightTheme),
                    trailing: Radio<ThemeMode>(
                      value: ThemeMode.light,
                      groupValue: themeProvider.themeMode,
                      onChanged: (value) {
                        if (value != null) {
                          themeProvider.setThemeMode(value);
                        }
                      },
                    ),
                    onTap: () {
                      themeProvider.setThemeMode(ThemeMode.light);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.dark_mode),
                    title: Text(l10n.darkTheme),
                    trailing: Radio<ThemeMode>(
                      value: ThemeMode.dark,
                      groupValue: themeProvider.themeMode,
                      onChanged: (value) {
                        if (value != null) {
                          themeProvider.setThemeMode(value);
                        }
                      },
                    ),
                    onTap: () {
                      themeProvider.setThemeMode(ThemeMode.dark);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings_system_daydream),
                    title: Text(l10n.systemTheme),
                    trailing: Radio<ThemeMode>(
                      value: ThemeMode.system,
                      groupValue: themeProvider.themeMode,
                      onChanged: (value) {
                        if (value != null) {
                          themeProvider.setThemeMode(value);
                        }
                      },
                    ),
                    onTap: () {
                      themeProvider.setThemeMode(ThemeMode.system);
                    },
                  ),
                ],
              ),
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Language Section
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.language,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: const Icon(Icons.language),
                    title: Text(l10n.portuguese),
                    trailing: Radio<Locale>(
                      value: const Locale('pt', 'BR'),
                      groupValue: themeProvider.locale,
                      onChanged: (value) {
                        if (value != null) {
                          themeProvider.setLocale(value);
                        }
                      },
                    ),
                    onTap: () {
                      themeProvider.setLocale(const Locale('pt', 'BR'));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.language),
                    title: Text(l10n.english),
                    trailing: Radio<Locale>(
                      value: const Locale('en', 'US'),
                      groupValue: themeProvider.locale,
                      onChanged: (value) {
                        if (value != null) {
                          themeProvider.setLocale(value);
                        }
                      },
                    ),
                    onTap: () {
                      themeProvider.setLocale(const Locale('en', 'US'));
                    },
                  ),
                ],
              ),
            ),
          ),
          
          const SizedBox(height: 16),
          
          // About Section
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.about,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: Text(l10n.appTitle),
                    subtitle: Text('Flutter 3.x with Material 3'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.code),
                    title: Text(l10n.version),
                    subtitle: const Text('1.0.0'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.palette),
                    title: const Text('Material 3'),
                    subtitle: const Text('Design System'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.language),
                    title: const Text('Internationalization'),
                    subtitle: const Text('pt-BR, en-US'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.dark_mode),
                    title: const Text('Theme Support'),
                    subtitle: const Text('Light, Dark, System'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




