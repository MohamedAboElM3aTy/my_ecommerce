import 'package:flutter/material.dart';
import 'package:my_ecommerce/controllers/auth_controller.dart';
import 'package:my_ecommerce/utilities/enums.dart';
import 'package:my_ecommerce/utilities/routes.dart';
import 'package:my_ecommerce/views/widgets/main_button.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit(AuthController model) async {
    try {
      await model.submit();
      if (!mounted) return;
      Navigator.of(context).pushNamed(AppRoutes.bottomNavBarRoute);
    } catch (e) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(
            'Error',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          content: Text(
            e.toString(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.sizeOf(context);

    return Consumer<AuthController>(
      builder: (_, model, __) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 22),
                      Text(
                        model.authFormType == AuthFormType.login
                            ? 'Login'
                            : 'Sign Up',
                        style: theme.titleLarge!.copyWith(
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(height: 70),
                      TextFormField(
                        onChanged: model.updateEmail,
                        controller: _emailController,
                        focusNode: _emailFocusNode,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => FocusScope.of(context)
                            .requestFocus(_passwordFocusNode),
                        validator: (val) =>
                            val!.isEmpty ? 'Please enter Correct Email!' : null,
                        decoration: const InputDecoration(
                          label: Text('Email'),
                          hintText: 'Enter your email',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        onChanged: model.updatePassword,
                        controller: _passwordController,
                        focusNode: _passwordFocusNode,
                        obscureText: true,
                        validator: (val) =>
                            val!.isEmpty || val.trim().length < 8
                                ? 'Please enter Correct Password!'
                                : null,
                        decoration: const InputDecoration(
                          label: Text('Password'),
                          hintText: 'Enter your password',
                        ),
                      ),
                      const SizedBox(height: 12),
                      if (model.authFormType == AuthFormType.login)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Forgot your password',
                                style: theme.displayMedium!.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_right_alt,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      const SizedBox(height: 20),
                      MainButton(
                        textLabel: model.authFormType == AuthFormType.login
                            ? 'LOGIN'
                            : 'SIGN UP',
                        onPress: () {
                          if (_formKey.currentState!.validate()) {
                            _submit(model);
                          }
                        },
                        hasCircularBorder: true,
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          child: Text(
                            model.authFormType == AuthFormType.login
                                ? 'Don\'t have an account ? Register'
                                : 'Have An account ? Login',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            _formKey.currentState!.reset();
                            model.toggleFormType();
                          },
                        ),
                      ),
                      SizedBox(height: size.height * 0.24),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          model.authFormType == AuthFormType.login
                              ? 'Or Login With Social Account'
                              : 'Or Sign Up with Social Account',
                          style: theme.labelMedium!.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 64,
                            width: 92,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(Icons.youtube_searched_for),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            height: 64,
                            width: 92,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.facebook),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
