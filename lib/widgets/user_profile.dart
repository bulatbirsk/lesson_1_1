import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Настройки'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(height: 30),
            _MenuWidget(),
          ],
        ),
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          _MenuWidgetRow(
            icon: Icons.favorite,
            text: "Избранное",
          ),
          _MenuWidgetRow(
            icon: Icons.call,
            text: "Звонки",
          ),
          _MenuWidgetRow(
            icon: Icons.computer,
            text: "Устройства",
          ),
          _MenuWidgetRow(
            icon: Icons.folder,
            text: "Папка с чатами",
          ),
        ],
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const _MenuWidgetRow({
    super.key,
    required this.icon,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(icon),
          SizedBox(
            width: 15,
          ),
          Expanded(child: Text(text)),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          _AvatarWidget(),
          SizedBox(
            height: 20,
          ),
          _UserNameWidget(),
          SizedBox(
            height: 10,
          ),
          _UserPhoneWidget(),
          SizedBox(
            height: 10,
          ),
          _UserNickNameWidget(),
        ],
      ),
    );
  }
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '@yandex.ru',
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '+7(123)456 78 90',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Bulat ',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}
