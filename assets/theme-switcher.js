/**
 * CFDocs Theme Switcher - Handles light/dark mode switching with localStorage persistence and OS preference detection
 */

(function() {
  'use strict';

  const LIGHT_THEME = 'light';
  const DARK_THEME = 'dark';
  const THEME_STORAGE_KEY = 'cfdocs-theme';
  const CONTEXT_MENU_ID = 'theme-toggle-reset-menu';
  const HTML_ELEMENT = document.documentElement;

  /**
   * Get the user's preferred theme
   * Priority: localStorage > OS preference > default to light
   */
  function getPreferredTheme() {
    // Check localStorage first
    const storedTheme = localStorage.getItem(THEME_STORAGE_KEY);
    if (storedTheme === LIGHT_THEME || storedTheme === DARK_THEME) {
      return storedTheme;
    }

    // Check OS preference
    if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
      return DARK_THEME;
    }

    // Default to light theme
    return LIGHT_THEME;
  }

  /**
   * Apply theme by setting data-theme attribute on HTML element
   */
  function applyTheme(theme,useLocalStorage = true) {
    if (theme === DARK_THEME || theme === LIGHT_THEME) {
      HTML_ELEMENT.setAttribute('data-theme', theme);
      if (useLocalStorage == true) {
        localStorage.setItem(THEME_STORAGE_KEY, theme);
      }
      updateToggleButton(theme);
    }
  }

  /**
   * Toggle between light and dark themes
   */
  function toggleTheme() {
    const currentTheme = HTML_ELEMENT.getAttribute('data-theme') || getPreferredTheme();
    const newTheme = currentTheme === LIGHT_THEME ? DARK_THEME : LIGHT_THEME;
    applyTheme(newTheme);
  }

  /**
   * Update the toggle button visual state (if needed for additional UI feedback)
   */
  function updateToggleButton(theme) {
    // The CSS handles the icon visibility through opacity
    // This function is here for future extensibility
    const toggleButton = document.getElementById('theme-toggle');
    if (toggleButton) {
      toggleButton.setAttribute('data-current-theme', theme);
    }
  }

  function buildContextMenu() {
    let menu = document.getElementById(CONTEXT_MENU_ID);
    if (menu) {
      return menu;
    }

    menu = document.createElement('div');
    menu.id = CONTEXT_MENU_ID;
    menu.className = 'theme-toggle-menu';
    menu.innerHTML = '<button type="button">Use OS theme preference</button>';
    menu.style.display = 'none';

    const button = menu.querySelector('button');
    button.addEventListener('click', function() {
      localStorage.removeItem(THEME_STORAGE_KEY);
      applyTheme(getPreferredTheme(), false);
      hideContextMenu();
    });

    menu.addEventListener('contextmenu', function(event) {
      event.preventDefault();
    });

    document.body.appendChild(menu);
    return menu;
  }

  function showContextMenu(x, y) {
    const menu = buildContextMenu();
    menu.style.display = 'block';
    menu.style.visibility = 'hidden';
    menu.style.left = '0px';
    menu.style.top = '0px';

    const menuWidth = menu.offsetWidth;
    const menuHeight = menu.offsetHeight;
    const maxLeft = Math.max(window.innerWidth - menuWidth - 10, 10);
    const maxTop = Math.max(window.innerHeight - menuHeight - 10, 10);

    menu.style.left = `${Math.min(x, maxLeft)}px`;
    menu.style.top = `${Math.min(y, maxTop)}px`;
    menu.style.visibility = 'visible';
  }

  function hideContextMenu() {
    const menu = document.getElementById(CONTEXT_MENU_ID);
    if (menu) {
      menu.style.display = 'none';
    }
  }

  /**
   * Initialize theme switcher
   */
  function init() {
    // Apply initial theme
    const initialTheme = getPreferredTheme();
    applyTheme(initialTheme,false); // Don't update localStorage on initial load since we're just applying the preferred theme

    // Add click handler to theme toggle button
    const toggleButton = document.getElementById('theme-toggle');
    if (toggleButton) {
      toggleButton.addEventListener('click', toggleTheme);
      toggleButton.addEventListener('keydown', function(e) {
        if (e.key === 'Enter' || e.key === ' ') {
          e.preventDefault();
          toggleTheme();
        }
      });
      toggleButton.addEventListener('contextmenu', function(e) {
        e.preventDefault();
        e.stopPropagation();
        showContextMenu(e.clientX, e.clientY);
      });

      document.addEventListener('click', function(e) {
        const menu = document.getElementById(CONTEXT_MENU_ID);
        if (menu && !menu.contains(e.target) && !toggleButton.contains(e.target)) {
          hideContextMenu();
        }
      });

      document.addEventListener('keydown', function(e) {
        if (e.key === 'Escape') {
          hideContextMenu();
        }
      });

      // Make toggle button keyboard accessible
      toggleButton.setAttribute('role', 'button');
      toggleButton.setAttribute('tabindex', '0');
      toggleButton.setAttribute('aria-label', 'Toggle dark/light mode');
    }

    // Listen for OS theme changes (only if localStorage preference not set)
    if (window.matchMedia) {
      window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', function(e) {
        // Only apply OS change if user hasn't set a preference in localStorage
        if (!localStorage.getItem(THEME_STORAGE_KEY)) {
          const newTheme = e.matches ? DARK_THEME : LIGHT_THEME;
          applyTheme(newTheme,false); // Don't update localStorage since this is an OS change
        }
      });
    }
  }

  // Initialize when DOM is ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }

  // Expose toggle function globally for testing/debugging
  window.toggleTheme = toggleTheme;
})();
