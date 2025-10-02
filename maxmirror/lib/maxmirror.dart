int maxMirror(List<int> arr) {
  int n = arr.length;
  int maxLen = 0;

  // Matriz para almacenar longitudes de coincidencias
  List<List<int>> dp = List.generate(n + 1, (_) => List.filled(n + 1, 0));

  // Comparamos el arreglo original con su reverso
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      // Compara arr[i] con arr[n - 1 - j] (posición invertida)
      if (arr[i] == arr[n - 1 - j]) {
        dp[i + 1][j + 1] = dp[i][j] + 1;
        if (dp[i + 1][j + 1] > maxLen) {
          maxLen = dp[i + 1][j + 1];
        }
      }
    }
  }

  return maxLen;
}
