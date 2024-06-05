class AppUrls {
  static const _baseUrl = 'https://apptest.dokandemo.com/wp-json';

  static const loginUrl = '$_baseUrl/jwt-auth/v1/token';
  static const registerUrl = '$_baseUrl/wp/v2/users/register';
  static const profileUrl = '$_baseUrl/wp/v2/users/me';
  static const updateProfileUrl = '$_baseUrl/wp/v2/users';
}
