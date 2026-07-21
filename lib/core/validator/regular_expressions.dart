class RegularExpressions {
static final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
static bool isValidEmail(String value)=> emailRegex.hasMatch(value);
}
