<?php
// Test file untuk debugging
echo "<h1>Test Admin Access</h1>";

// Test 1: Check if file exists
echo "<h2>1. File Check:</h2>";
$controller_file = __DIR__ . '/application/controllers/Admin.php';
echo "Controller file: " . ($file_exists = file_exists($controller_file) ? '✅ EXISTS' : '❌ NOT FOUND') . "<br>";
echo "Path: $controller_file<br><br>";

// Test 2: Check session
session_start();
echo "<h2>2. Session Check:</h2>";
echo "<pre>";
print_r($_SESSION);
echo "</pre>";

// Test 3: Test routes
echo "<h2>3. Test URLs:</h2>";
$base_url = "http://localhost/musikk/";
echo "Click to test:<br>";
echo "<a href='{$base_url}admin' target='_blank'>Test: {$base_url}admin</a><br>";
echo "<a href='{$base_url}admin/index' target='_blank'>Test: {$base_url}admin/index</a><br>";
echo "<a href='{$base_url}admin/dashboard' target='_blank'>Test: {$base_url}admin/dashboard</a><br>";
echo "<a href='{$base_url}index.php/admin' target='_blank'>Test: {$base_url}index.php/admin</a><br>";
echo "<a href='{$base_url}index.php/admin/dashboard' target='_blank'>Test: {$base_url}index.php/admin/dashboard</a><br>";

// Test 4: Check Apache modules
echo "<h2>4. Apache Modules:</h2>";
if (function_exists('apache_get_modules')) {
    $modules = apache_get_modules();
    echo "mod_rewrite: " . (in_array('mod_rewrite', $modules) ? '✅ ENABLED' : '❌ DISABLED') . "<br>";
} else {
    echo "Cannot check (not running as Apache module)<br>";
}

// Test 5: Check .htaccess
echo "<h2>5. .htaccess Content:</h2>";
$htaccess = __DIR__ . '/.htaccess';
if (file_exists($htaccess)) {
    echo "<pre>";
    echo htmlspecialchars(file_get_contents($htaccess));
    echo "</pre>";
} else {
    echo "❌ .htaccess NOT FOUND<br>";
}

// Test 6: PHP Info link
echo "<h2>6. PHP Info:</h2>";
echo "<a href='test_phpinfo.php' target='_blank'>View PHP Info</a><br>";
?>
