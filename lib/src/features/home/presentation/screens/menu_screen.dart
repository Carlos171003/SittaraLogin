import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _menuItem(
              icon: Icons.home,
              text: 'Inicio',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            _menuItem(
              icon: Icons.search,
              text: 'Buscar restaurante',
              onTap: () {},
            ),
            _menuItem(
              icon: Icons.list,
              text: 'Mis reservas',
              onTap: () {},
            ),
            _menuItem(
              icon: Icons.location_on,
              text: 'Mi Ubicación',
              onTap: () {},
            ),
            _menuItem(
              icon: Icons.smart_toy,
              text: 'Chatbot',
              onTap: () {},
            ),
            _menuItem(
              icon: Icons.chat_bubble,
              text: 'Opiniones',
              onTap: () {},
            ),
            _menuItemNotificaciones(),
            const Spacer(),
            _menuItem(
              icon: Icons.logout,
              text: 'Cerrar Sesión',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black, size: 30),
      title: Text(
        text,
        style: const TextStyle(fontSize: 18, color: Colors.black),
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
    );
  }

  Widget _menuItemNotificaciones() {
    return ListTile(
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          const Icon(Icons.mail, color: Colors.black, size: 30),
          Positioned(
            right: -2,
            top: -2,
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
      title: const Text(
        'Notificaciones',
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
      onTap: () {},
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
    );
  }
}