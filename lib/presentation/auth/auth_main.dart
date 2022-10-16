import 'package:flutter/material.dart';
import 'package:kursach/presentation/auth/auth_body.dart';
import 'package:kursach/presentation/outstanding/gradientmask.dart';

class AuthMain extends StatefulWidget {
  const AuthMain({
    Key? key,
  }) : super(key: key);

  @override
  State<AuthMain> createState() => _AuthMainState();
}

class _AuthMainState extends State<AuthMain> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: isLogin ? 4 : 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: AuthBody(
                isLoginState: isLogin,
              ),
            )),
        Flexible(
          flex: isLogin ? 2 : 1,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isLogin ? "Все еще нет аккаунта?" : "Уже есть аккаунт?",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                GradientMask(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  size: 80,
                  child: TextButton(
                      onPressed: () => setState(() {
                            isLogin = !isLogin;
                          }),
                      child: Text(
                          isLogin ? "Зарегистрироваться!" : "Авторизироваться!",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  decorationStyle:
                                      TextDecorationStyle.dashed))),
                )
              ]),
        )
      ],
    );
  }
}
