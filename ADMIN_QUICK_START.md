# 🚀 ADMIN DASHBOARD - QUICK START

## ⚡ Instalasi Cepat (5 Menit)

### Step 1: Import Database (2 menit)

```bash
# Di phpMyAdmin:
1. Buka: http://localhost/phpmyadmin
2. Pilih database 'musikk_db'
3. Klik tab "Import"
4. Pilih file: database_admin_features.sql
5. Klik "Go"
```

### Step 2: Set Admin User (1 menit)

```sql
-- Di phpMyAdmin SQL tab, jalankan:
UPDATE users
SET role_id = 1, status = 'active'
WHERE user_id = 1;
```

### Step 3: Akses Dashboard (2 menit)

```
1. Buka: http://localhost/musikk/auth/login
2. Login dengan user yang sudah di-set sebagai admin
3. Otomatis redirect ke: http://localhost/musikk/admin
```

## ✅ Verifikasi Instalasi

Dashboard berhasil jika Anda melihat:

- ✓ 4 statistik cards (Total Users, Content, dll)
- ✓ Sidebar menu navigasi
- ✓ Grafik tren penggunaan
- ✓ Tabel pengguna terbaru

## 🎯 Menu Utama

| Menu      | URL                | Fungsi               |
| --------- | ------------------ | -------------------- |
| Dashboard | `/admin`           | Overview & statistik |
| Users     | `/admin/users`     | Kelola pengguna      |
| Music     | `/admin/music`     | Kelola musik         |
| Podcasts  | `/admin/podcasts`  | Kelola podcast       |
| Playlists | `/admin/playlists` | Kelola playlist      |
| Reports   | `/admin/reports`   | Laporan & export     |
| Logs      | `/admin/logs`      | Activity logs        |
| Settings  | `/admin/settings`  | Pengaturan sistem    |

## 🔧 Troubleshooting

### "Tidak punya akses"

```sql
UPDATE users SET role_id = 1 WHERE email = 'your@email.com';
```

### Grafik tidak muncul

- Clear browser cache
- Check internet connection (untuk CDN)

### Page not found

- Cek base_url di `config.php`
- Restart WAMP/Apache

## 📚 Dokumentasi

Lihat `ADMIN_DASHBOARD_README.md` untuk dokumentasi lengkap

---

**Selamat! Dashboard admin siap digunakan! 🎉**
