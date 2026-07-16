import 'package:flutter/material.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';
import 'package:medicare/widgets/custom_text_form_field.dart';

class ProfileModificatonPage extends StatefulWidget {
  const ProfileModificatonPage({super.key});

  @override
  State<ProfileModificatonPage> createState() => _ProfileModificatonPageState();
}

class _ProfileModificatonPageState extends State<ProfileModificatonPage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Modifier le profil",
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nom",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              CustomTextFormField(controller: _controller, hintText: "Dupont"),
              SizedBox(height: 10),
              Text(
                "Prénom",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              CustomTextFormField(controller: _controller, hintText: "Jean"),
              SizedBox(height: 10),
              Text(
                "Email",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              CustomTextFormField(
                controller: _controller,
                hintText: "jeandupont@gmail.com",
              ),
              SizedBox(height: 10),
              Text(
                "Téléphone",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              CustomTextFormField(
                controller: _controller,
                hintText: "09754355465",
              ),
              SizedBox(height: 10),
              Text(
                "Date de naissance",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              CustomTextFormField(
                controller: _controller,
                hintText: "16/07/26",
                suffixIcon: Icon(Icons.calendar_month_outlined),
              ),
              SizedBox(height: 10),
              Text(
                "Adresse",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              CustomTextFormField(controller: _controller, hintText: "NYU"),
              SizedBox(height: 20),
              CustomElevatedButton(text: "Enregister", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
