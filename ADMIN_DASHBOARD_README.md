# MUSIKK - ADMIN DASHBOARD

## Dokumentasi Fitur Dashboard Admin

### 📋 DESKRIPSI

Dashboard Admin untuk aplikasi Musikk adalah sistem manajemen lengkap yang memungkinkan administrator untuk mengelola pengguna, konten (musik & podcast), playlist, serta memantau aktivitas sistem.

---

## 🚀 INSTALASI

### 1. Import Database

Jalankan SQL script berikut secara berurutan:

```bash
# Import database utama (jika belum)
mysql -u root -p musikk_db < database_auth_playlist.sql

# Import fitur admin
mysql -u root -p musikk_db < database_admin_features.sql
```

### 2. Set Admin User

Setelah import database, user pertama (ID 1) otomatis menjadi admin.
Atau Anda dapat mengubah user lain menjadi admin dengan query:

```sql
UPDATE users SET role_id = 1, status = 'active' WHERE user_id = [ID_USER];
```

### 3. Akses Dashboard

- **URL**: `http://localhost/musikk/admin`
- **Login**: Gunakan kredensial user dengan `role_id = 1`

---

## 📊 FITUR DASHBOARD

### 1. **Dashboard Utama** (`/admin`)

- **Statistik Real-time**:
  - Total pengguna (aktif, baru, dll.)
  - Total konten (musik + podcast)
  - Pemutaran hari ini
  - Konten menunggu moderasi
- **Grafik & Visualisasi**:
  - Tren penggunaan 7 hari terakhir
  - Pertumbuhan pengguna
- **Notifikasi Terbaru**:
  - Bug reports
  - Support requests
  - Konten baru
- **Pengguna Terbaru**:
  - 5 pengguna terakhir yang mendaftar

### 2. **Manajemen Pengguna** (`/admin/users`)

**Fitur**:

- ✅ Lihat daftar semua pengguna
- ✅ Filter berdasarkan status (aktif, nonaktif, diblokir)
- ✅ Filter berdasarkan role (admin, moderator, user)
- ✅ Pencarian pengguna (username/email)
- ✅ Pagination
- ✅ Detail pengguna dengan riwayat aktivitas
- ✅ Edit informasi pengguna (username, email, role, status)
- ✅ Blokir/Unblock pengguna
- ✅ Hapus pengguna

**URL**:

- List: `/admin/users`
- Detail: `/admin/user_detail/{id}`
- Update: `/admin/user_update/{id}`
- Delete: `/admin/user_delete/{id}`
- Block: `/admin/user_block/{id}`
- Unblock: `/admin/user_unblock/{id}`

### 3. **Manajemen Musik** (`/admin/music`)

**Fitur**:

- ✅ Lihat daftar semua musik
- ✅ Filter berdasarkan status (approved, pending, rejected)
- ✅ Pencarian musik (judul/artis)
- ✅ Setujui musik pending
- ✅ Tolak musik
- ✅ Hapus musik
- ✅ Lihat statistik pemutaran

**URL**:

- List: `/admin/music`
- Detail: `/admin/music_detail/{id}`
- Approve: `/admin/music_approve/{id}`
- Reject: `/admin/music_reject/{id}`
- Delete: `/admin/music_delete/{id}`

### 4. **Manajemen Podcast** (`/admin/podcasts`)

**Fitur**:

- ✅ Lihat daftar semua podcast
- ✅ Filter berdasarkan status
- ✅ Pencarian podcast (judul/host)
- ✅ Hapus podcast
- ✅ Lihat statistik pemutaran

**URL**:

- List: `/admin/podcasts`
- Detail: `/admin/podcast_detail/{id}`
- Delete: `/admin/podcast_delete/{id}`

### 5. **Manajemen Playlist** (`/admin/playlists`)

**Fitur**:

- ✅ Lihat daftar semua playlist
- ✅ Filter berdasarkan status
- ✅ Pencarian playlist
- ✅ Hapus playlist yang melanggar
- ✅ Lihat statistik (jumlah lagu, pemutaran)

**URL**:

- List: `/admin/playlists`
- Delete: `/admin/playlist_delete/{id}`

### 6. **Laporan & Statistik** (`/admin/reports`)

**Fitur**:

- ✅ Grafik tren penggunaan (30 hari)
- ✅ Grafik pertumbuhan pengguna (30 hari)
- ✅ Export laporan:
  - Laporan Pengguna (CSV)
  - Laporan Konten (CSV)
  - Laporan Aktivitas (CSV)
- ✅ Filter berdasarkan tanggal
- ✅ Summary cards dengan statistik utama

**URL**:

- View: `/admin/reports`
- Export: `/admin/export_report?type={type}&format={format}`

### 7. **Log Aktivitas** (`/admin/logs`)

**Fitur**:

- ✅ Tracking semua aktivitas admin dan pengguna
- ✅ Filter berdasarkan:
  - User ID
  - Jenis aksi
  - Rentang tanggal
- ✅ Detail lengkap:
  - Waktu
  - User
  - Aksi
  - Deskripsi
  - IP Address
  - User Agent
- ✅ Pagination

**URL**:

- View: `/admin/logs`

### 8. **Notifikasi** (`/admin/notifications`)

**Fitur**:

- ✅ Lihat semua notifikasi
- ✅ Badge notifikasi belum dibaca
- ✅ Tandai satu notifikasi sebagai dibaca
- ✅ Tandai semua notifikasi sebagai dibaca
- ✅ Kategori notifikasi:
  - Bug Reports 🐛
  - Support Requests ❓
  - New Content 🎵
  - System Notifications ℹ️

**URL**:

- List: `/admin/notifications`
- Mark Read: `/admin/notification_read/{id}`
- Mark All Read: `/admin/notifications_read_all`

### 9. **Pengaturan Sistem** (`/admin/settings`)

**Fitur**:

- ✅ Pengaturan umum:
  - Nama aplikasi
  - Logo aplikasi
  - Notifikasi email (on/off)
  - Mode maintenance (on/off)
- ✅ Informasi Role
- ✅ Informasi Sistem:
  - PHP version
  - CodeIgniter version
  - Database
  - Server software

**URL**:

- View: `/admin/settings`
- Update: `/admin/settings_update`

---

## 🎨 DESAIN & UI

### Layout

- **Header**:
  - Logo & nama aplikasi
  - Search bar global
  - Notifikasi dropdown
  - User menu
- **Sidebar**:
  - Dashboard
  - Manajemen (Users, Music, Podcasts, Playlists)
  - Laporan (Reports, Logs)
  - Sistem (Notifications, Settings)
- **Responsive**:
  - Desktop: Sidebar permanen
  - Mobile: Collapsible sidebar

### Teknologi

- **Bootstrap 5.3**: Framework CSS
- **Font Awesome 6**: Icons
- **Chart.js 4**: Grafik interaktif
- **jQuery 3.7**: JavaScript utilities

---

## 🔐 KEAMANAN

### Role-Based Access Control

- **Admin (role_id = 1)**: Full access ke semua fitur
- **Moderator (role_id = 2)**: Akses terbatas (manage content)
- **User (role_id = 3)**: Tidak ada akses admin

### Login Redirect

- Admin → `/admin` (Dashboard Admin)
- Non-admin → `/` (Home Page)

### Session Protection

```php
// Setiap halaman admin mengecek:
1. User logged in
2. User role = admin (role_id = 1)
3. Jika tidak, redirect ke home dengan error message
```

### Activity Logging

Semua aksi admin tercatat:

- User ID
- Action (login, user_update, music_delete, dll.)
- Description
- IP Address
- User Agent
- Timestamp

---

## 📱 FITUR TAMBAHAN

### 1. Pencarian Global

- Cari pengguna, musik, atau podcast
- Auto-complete dengan AJAX
- Results categorized

### 2. Real-time Updates

- Statistik dashboard auto-refresh (60 detik)
- Notification badge update otomatis

### 3. Export Data

- Export ke CSV
- Filter berdasarkan tanggal
- Multiple report types

### 4. Responsive Design

- Desktop optimized
- Tablet friendly
- Mobile accessible

---

## 🛠️ STRUKTUR FILE

```
application/
├── controllers/
│   └── Admin.php                    # Main admin controller
├── models/
│   └── Admin_model.php              # Admin database operations
└── views/
    └── admin/
        ├── header.php               # Header dengan navbar
        ├── sidebar.php              # Sidebar navigasi
        ├── footer.php               # Footer dengan scripts
        ├── dashboard.php            # Dashboard utama
        ├── users/
        │   ├── list.php            # List pengguna
        │   └── detail.php          # Detail & edit pengguna
        ├── music/
        │   └── list.php            # List musik
        ├── podcasts/
        │   └── list.php            # List podcast
        ├── playlists/
        │   └── list.php            # List playlist
        ├── logs/
        │   └── list.php            # Log aktivitas
        ├── notifications/
        │   └── list.php            # Notifikasi
        ├── reports/
        │   └── index.php           # Laporan & statistik
        └── settings/
            └── index.php           # Pengaturan sistem

assets/
└── admin/
    ├── css/
    │   └── admin.css               # Custom admin styles
    └── js/
        └── admin.js                # Admin interactivity
```

---

## 📝 DATABASE TABLES

### Tabel Baru untuk Admin:

1. **user_roles**: Role definisi (admin, moderator, user)
2. **activity_logs**: Log semua aktivitas
3. **admin_notifications**: Notifikasi untuk admin
4. **music**: Konten musik
5. **podcasts**: Konten podcast
6. **system_settings**: Pengaturan sistem
7. **bug_reports**: Laporan bug (optional)
8. **support_tickets**: Support tickets (optional)

### Kolom Tambahan:

- `users.role_id`: Foreign key ke user_roles
- `users.status`: active/inactive/blocked
- `users.last_login`: Timestamp login terakhir
- `users.login_count`: Jumlah login
- `playlists.play_count`: Statistik pemutaran
- `playlists.status`: active/deleted

---

## 🔄 PENGGUNAAN

### Login sebagai Admin

1. Buka `http://localhost/musikk/auth/login`
2. Login dengan user yang memiliki `role_id = 1`
3. Otomatis redirect ke `/admin`

### Mengelola Pengguna

1. Klik **Pengguna** di sidebar
2. Gunakan filter untuk mencari user tertentu
3. Klik **👁️** untuk melihat detail
4. Edit informasi, blokir, atau hapus user

### Moderasi Konten

1. Klik **Musik** atau **Podcast** di sidebar
2. Filter status = "Menunggu"
3. Review konten
4. Klik **✓** untuk setujui atau **✕** untuk tolak

### Melihat Statistik

1. Klik **Statistik & Laporan** di sidebar
2. Lihat grafik tren
3. Export data dengan filter tanggal

### Monitoring Aktivitas

1. Klik **Log Aktivitas** di sidebar
2. Filter berdasarkan user/aksi/tanggal
3. Review semua aktivitas sistem

---

## 🎯 TIPS PENGGUNAAN

1. **Gunakan Search Global**: Cari cepat dengan search bar di header
2. **Monitor Notifikasi**: Cek badge notifikasi secara berkala
3. **Export Regular**: Export data untuk backup
4. **Review Logs**: Periksa log aktivitas untuk audit
5. **Update Settings**: Sesuaikan pengaturan sistem sesuai kebutuhan

---

## ⚙️ KONFIGURASI

### Base URL

Update di `application/config/config.php`:

```php
$config['base_url'] = 'http://localhost/musikk/';
```

### Database

Update di `application/config/database.php`:

```php
$db['default'] = array(
    'hostname' => 'localhost',
    'username' => 'root',
    'password' => '',
    'database' => 'musikk_db',
    ...
);
```

### Assets Path

Update di `assets/admin/js/admin.js`:

```javascript
const baseUrl = window.location.origin + "/musikk/";
```

---

## 🐛 TROUBLESHOOTING

### 1. Tidak bisa akses `/admin`

- Pastikan user memiliki `role_id = 1`
- Cek session login
- Periksa database connection

### 2. Grafik tidak muncul

- Pastikan Chart.js loaded
- Check browser console untuk errors
- Verifikasi data dari database

### 3. Export tidak berfungsi

- Cek permission folder
- Pastikan download helper loaded
- Review query data export

### 4. Notifikasi tidak update

- Cek AJAX endpoint `/admin/ajax_get_stats`
- Verifikasi database connection
- Review JavaScript console

---

## 📞 SUPPORT

Untuk bantuan lebih lanjut, hubungi:

- Email: admin@musikk.com
- Documentation: README.md
- GitHub Issues: [Repository Link]

---

## 📄 LICENSE

Copyright © 2025 Musikk App. All rights reserved.

---

**Terakhir Diupdate**: November 2025
**Version**: 1.0.0
