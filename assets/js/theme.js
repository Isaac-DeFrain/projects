(function () {
  var storageKey = "projects-theme";
  var root = document.documentElement;

  function getSystemTheme() {
    return window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light";
  }

  function getStoredTheme() {
    try {
      return localStorage.getItem(storageKey);
    } catch (_error) {
      return null;
    }
  }

  function setStoredTheme(theme) {
    try {
      localStorage.setItem(storageKey, theme);
    } catch (_error) {
      /* ignore storage failures */
    }
  }

  function applyTheme(theme) {
    if (theme === "light" || theme === "dark") {
      root.setAttribute("data-theme", theme);
      return;
    }

    root.removeAttribute("data-theme");
  }

  function resolveTheme() {
    return getStoredTheme() || getSystemTheme();
  }

  function toggleTheme() {
    var currentTheme = resolveTheme();
    var nextTheme = currentTheme === "dark" ? "light" : "dark";

    setStoredTheme(nextTheme);
    applyTheme(nextTheme);
  }

  applyTheme(getStoredTheme());

  window.matchMedia("(prefers-color-scheme: dark)").addEventListener("change", function () {
    if (!getStoredTheme()) {
      applyTheme(null);
    }
  });

  document.addEventListener("DOMContentLoaded", function () {
    var toggle = document.getElementById("theme-toggle");

    if (toggle) {
      toggle.addEventListener("click", toggleTheme);
    }
  });
})();
