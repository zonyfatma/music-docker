<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Hash Generator - Admin Musikk</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        .container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
            padding: 40px;
            max-width: 600px;
            width: 100%;
        }
        h1 {
            color: #333;
            margin-bottom: 10px;
            font-size: 28px;
        }
        .subtitle {
            color: #666;
            margin-bottom: 30px;
            font-size: 14px;
        }
        .form-group {
            margin-bottom: 25px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: 600;
            font-size: 14px;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e0e0e0;
            border-radius: 10px;
            font-size: 15px;
            transition: all 0.3s;
        }
        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }
        button {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.2s;
        }
        button:hover {
            transform: translateY(-2px);
        }
        button:active {
            transform: translateY(0);
        }
        .result {
            margin-top: 30px;
            padding: 20px;
            background: #f8f9fa;
            border-radius: 10px;
            border-left: 4px solid #667eea;
        }
        .result h3 {
            color: #333;
            margin-bottom: 15px;
            font-size: 18px;
        }
        .hash-output {
            background: #fff;
            padding: 15px;
            border-radius: 8px;
            word-break: break-all;
            font-family: 'Courier New', monospace;
            font-size: 13px;
            color: #333;
            margin-bottom: 15px;
            border: 1px solid #e0e0e0;
        }
        .sql-output {
            background: #2d2d2d;
            padding: 15px;
            border-radius: 8px;
            word-break: break-all;
            font-family: 'Courier New', monospace;
            font-size: 12px;
            color: #a9dc76;
            margin-bottom: 10px;
        }
        .copy-btn {
            padding: 8px 16px;
            background: #28a745;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 13px;
            cursor: pointer;
            margin-right: 10px;
            margin-top: 10px;
        }
        .copy-btn:hover {
            background: #218838;
        }
        .info-box {
            background: #fff3cd;
            border: 1px solid #ffc107;
            border-radius: 8px;
            padding: 15px;
            margin-top: 20px;
        }
        .info-box h4 {
            color: #856404;
            margin-bottom: 8px;
            font-size: 14px;
        }
        .info-box p {
            color: #856404;
            font-size: 13px;
            line-height: 1.6;
        }
        .success {
            background: #d4edda;
            border-color: #28a745;
            color: #155724;
            padding: 12px;
            border-radius: 8px;
            margin-bottom: 15px;
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🔐 Password Hash Generator</h1>
        <p class="subtitle">Generate secure password hash untuk Admin Musikk</p>

        <form method="POST">
            <div class="form-group">
                <label for="username">Username Admin</label>
                <input type="text" id="username" name="username" placeholder="admin" required>
            </div>

            <div class="form-group">
                <label for="password">Password Baru</label>
                <input type="password" id="password" name="password" placeholder="Minimal 8 karakter" required minlength="8">
            </div>

            <button type="submit" name="generate">Generate Hash</button>
        </form>

        <?php
        if (isset($_POST['generate'])) {
            $username = htmlspecialchars($_POST['username']);
            $password = $_POST['password'];
            
            // Generate hash menggunakan bcrypt (PASSWORD_DEFAULT)
            $hash = password_hash($password, PASSWORD_DEFAULT);
            
            // Generate SQL query
            $sql_update = "UPDATE users SET password = '$hash' WHERE username = '$username';";
            $sql_insert = "INSERT INTO `users` (`username`, `email`, `password`, `full_name`, `role_id`, `status`) VALUES ('$username', '$username@musikk.com', '$hash', 'Administrator', 1, 'active');";
            
            echo '<div class="result">';
            echo '<div class="success">✅ Hash berhasil di-generate!</div>';
            echo '<h3>Password Hash:</h3>';
            echo '<div class="hash-output">' . htmlspecialchars($hash) . '</div>';
            echo '<button class="copy-btn" onclick="copyHash()">📋 Copy Hash</button>';
            
            echo '<h3 style="margin-top: 25px;">SQL Query - Update Password:</h3>';
            echo '<div class="sql-output" id="sqlUpdate">' . htmlspecialchars($sql_update) . '</div>';
            echo '<button class="copy-btn" onclick="copySQLUpdate()">📋 Copy SQL Update</button>';
            
            echo '<h3 style="margin-top: 25px;">SQL Query - Insert User Baru:</h3>';
            echo '<div class="sql-output" id="sqlInsert">' . htmlspecialchars($sql_insert) . '</div>';
            echo '<button class="copy-btn" onclick="copySQLInsert()">📋 Copy SQL Insert</button>';
            echo '</div>';
        }
        ?>

        <div class="info-box">
            <h4>ℹ️ Cara Penggunaan:</h4>
            <p>
                1. Masukkan username admin dan password baru<br>
                2. Klik "Generate Hash"<br>
                3. Copy SQL query yang sesuai<br>
                4. Jalankan di phpMyAdmin pada database musikk<br>
                5. Login menggunakan password baru
            </p>
        </div>

        <div class="info-box" style="background: #d1ecf1; border-color: #17a2b8; margin-top: 15px;">
            <h4 style="color: #0c5460;">🔒 Keamanan Password:</h4>
            <p style="color: #0c5460;">
                • Minimal 8 karakter<br>
                • Gunakan kombinasi huruf besar, kecil, angka, dan simbol<br>
                • Jangan gunakan password yang mudah ditebak<br>
                • Segera hapus file ini setelah selesai digunakan!
            </p>
        </div>
    </div>

    <script>
        function copyHash() {
            const hash = document.querySelector('.hash-output').textContent;
            copyToClipboard(hash);
        }

        function copySQLUpdate() {
            const sql = document.getElementById('sqlUpdate').textContent;
            copyToClipboard(sql);
        }

        function copySQLInsert() {
            const sql = document.getElementById('sqlInsert').textContent;
            copyToClipboard(sql);
        }

        function copyToClipboard(text) {
            const textarea = document.createElement('textarea');
            textarea.value = text;
            textarea.style.position = 'fixed';
            textarea.style.opacity = '0';
            document.body.appendChild(textarea);
            textarea.select();
            document.execCommand('copy');
            document.body.removeChild(textarea);
            
            // Show success message
            const success = document.querySelector('.success');
            if (success) {
                success.style.display = 'block';
                success.textContent = '✅ Copied to clipboard!';
                setTimeout(() => {
                    success.style.display = 'none';
                }, 2000);
            } else {
                alert('Copied to clipboard!');
            }
        }
    </script>
</body>
</html>
