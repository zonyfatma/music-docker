-- ================================================
-- Script untuk Membuat Akun Admin
-- ================================================
-- Jalankan script ini setelah import database utama dan database_admin_features.sql

-- Pastikan role admin sudah ada
INSERT IGNORE INTO `user_roles` (`role_id`, `role_name`, `permissions`) VALUES
(1, 'admin', '{"all": true}'),
(2, 'moderator', '{"manage_content": true, "manage_users": false}'),
(3, 'user', '{"view_content": true}');

-- Membuat akun admin
-- Password default: admin123 (WAJIB diganti setelah login pertama!)
-- Hash password menggunakan PHP password_hash dengan PASSWORD_DEFAULT (bcrypt)

INSERT INTO `users` (`username`, `email`, `password`, `full_name`, `role_id`, `status`, `is_premium`, `created_at`, `updated_at`) 
VALUES (
  'admin',
  'admin@musikk.com',
  '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', -- Password: admin123
  'Administrator',
  1,
  'active',
  1,
  NOW(),
  NOW()
)
ON DUPLICATE KEY UPDATE 
  role_id = 1,
  status = 'active';

-- Verifikasi akun admin sudah dibuat
SELECT u.id, u.username, u.email, u.full_name, ur.role_name, u.status
FROM users u
LEFT JOIN user_roles ur ON u.role_id = ur.role_id
WHERE u.username = 'admin';

-- ================================================
-- CATATAN PENTING:
-- ================================================
-- 1. Username: admin
-- 2. Password: admin123
-- 3. Email: admin@musikk.com
-- 4. SEGERA ganti password setelah login pertama!
-- 5. Akses admin dashboard di: http://localhost/musikk/admin
-- 6. Login melalui: http://localhost/musikk/auth/login
-- ================================================


ALTER TABLE `system_settings`
ADD COLUMN `app_name` VARCHAR(255) NOT NULL DEFAULT 'Musikk',
ADD COLUMN `app_logo` VARCHAR(255) NOT NULL DEFAULT '/assets/logo.png';