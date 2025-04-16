import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  void _launchURL(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Não foi possível abrir o link $url';
    }
  }

  Widget _buildCategoryCard(String asset, String title, VoidCallback onTap) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              Image.asset(asset, height: 40, width: 40, fit: BoxFit.contain),
              const SizedBox(width: 12),
              Text(title, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(child: Image.asset('assets/logo.png', width: 200)),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Text(
                      'Categorias',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _buildCategoryCard(
                    'assets/categories/petiscos.png',
                    'Petiscos',
                    () {},
                  ),
                  _buildCategoryCard(
                    'assets/categories/principais.png',
                    'Principais',
                    () {},
                  ),
                  _buildCategoryCard(
                    'assets/categories/massas.png',
                    'Massas',
                    () {},
                  ),
                  _buildCategoryCard(
                    'assets/categories/sobremesas.png',
                    'Sobremesas',
                    () {},
                  ),
                  _buildCategoryCard(
                    'assets/categories/bebidas.png',
                    'Bebidas',
                    () {},
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.grey,
                    ),
                    onPressed:
                        () => _launchURL(
                          'https://wa.me/?text=Conheça%20nosso%20app%20de%20delivery!',
                        ),
                  ),
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.grey,
                    ),
                    onPressed: () => _launchURL('https://linkedin.com'),
                  ),
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.grey,
                    ),
                    onPressed: () => _launchURL('https://instagram.com'),
                  ),
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.grey,
                    ),
                    onPressed: () => _launchURL('https://facebook.com'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
