# 🎵 BeatBay Music Website - Panduan Lengkap

## 📋 Daftar Halaman Yang Tersedia

### 1. 🏠 Home Page

**URL:** `http://localhost/musikk`

**Fitur:**

- Hero section dengan artist profile (Ed Sheeran)
- Verified artist badge
- Monthly listeners counter
- Popular releases (6 albums)
- Popular songs list dengan play count
- Trending artists di sidebar
- Recent played history
- Music player di bottom bar

---

### 2. 🔍 Discover Page

**URL:** `http://localhost/musikk/discover`

**Fitur:**

- Browse by Genre (8 kategori dengan warna berbeda)
  - Pop, Rock, Hip-Hop, Electronic, Jazz, Classical, R&B, Country
- New Releases section
- Featured Albums (12 albums acak)
- Trending Now (Top 10 songs dengan ranking)
- Popular Artists grid

**Interaksi:**

- Klik kategori genre untuk filter musik
- Hover pada album untuk melihat play button
- Klik artist untuk ke halaman artist

---

### 3. 📻 Radio Page

**URL:** `http://localhost/musikk/radio`

**Fitur:**

- Featured Radio Stations (6 stations)
  - Top Hits Radio, Chill Vibes, Workout Beats
  - Indie Mix, Classic Rock, Jazz Cafe
  - Live indicator dengan animasi pulse
  - Listener count
- Genre Radio Stations (6 genre)
  - Dengan warna tema berbeda
- Artist Radio (4 artist-based stations)
  - Radio berdasarkan Ed Sheeran, James Arthur, dll
- Recently Played Stations

**Interaksi:**

- Hover untuk melihat "LISTEN NOW" button
- Live badge menunjukkan streaming aktif
- Click untuk mulai streaming

---

### 4. 💿 Albums Page

**URL:** `http://localhost/musikk/albums`

**Fitur:**

- New Releases dengan "NEW" badge
- Popular Albums dengan "🔥" trending badge
- 2024 Releases section
- 2023 Releases section
- All Albums dengan filter
  - Filter: All, Albums, Singles, EPs
- Large album covers dengan play overlay

**Interaksi:**

- Filter albums by type
- Hover untuk play button
- Click album untuk detail view

---

### 5. 🎙️ Podcast Page

**URL:** `http://localhost/musikk/podcast`

**Fitur:**

- Browse by Category (6 kategori)
  - Music News, Artist Interviews, Music History
  - Production Tips, Live Performances, Industry Insights
- Featured Podcasts (6 podcasts)
  - Episode count
  - Host information
  - Description
- Popular Episodes list
  - Episode duration
  - Release date
- Your Subscriptions
  - "New episode" badge
- Recommended Podcasts

**Interaksi:**

- Subscribe/Unsubscribe button
- Play episode
- Save episode untuk nanti
- View podcast details

---

## 🎨 Desain Features

### Color Scheme

- Primary Background: `#0a0e27` (Dark Blue)
- Secondary Background: `#0f1419` (Darker)
- Card Background: `#1a1f2e`
- Accent Green: `#1ed760` (Spotify-like)
- Text Primary: `#ffffff`
- Text Secondary: `#b3b3b3`

### Animasi & Interaksi

✨ Smooth transitions pada semua elemen
✨ Hover effects pada cards
✨ Scale animation pada buttons
✨ Pulse animation pada live indicator
✨ Gradient backgrounds pada kategori

### Typography

- Font Family: Inter (Google Fonts)
- Heading weights: 700-800
- Body weights: 400-600

---

## 🎯 Testing Checklist

### Navigation

- [ ] Klik menu Home di sidebar
- [ ] Klik menu Discover
- [ ] Klik menu Radio
- [ ] Klik menu Albums
- [ ] Klik menu Podcast
- [ ] Test back button di header
- [ ] Test search bar

### Home Page

- [ ] Lihat artist profile
- [ ] Scroll albums section
- [ ] Click song untuk play
- [ ] Hover album untuk play button
- [ ] Check recent played di sidebar
- [ ] Test music player controls

### Discover Page

- [ ] Click genre categories
- [ ] Hover pada trending songs
- [ ] Click artist cards
- [ ] Scroll through featured albums

### Radio Page

- [ ] Hover featured stations
- [ ] Check live badge animation
- [ ] Click genre radio cards
- [ ] View artist radio stations

### Albums Page

- [ ] View new releases
- [ ] Check trending badge
- [ ] Test filter buttons
- [ ] Hover untuk play overlay

### Podcast Page

- [ ] Browse categories
- [ ] Click podcast cards
- [ ] Play episode
- [ ] Check subscription section

---

## 🚀 Quick Start

1. **Import Database**

   ```bash
   # Di phpMyAdmin, import file database.sql
   ```

2. **Akses Website**

   ```
   http://localhost/musikk
   ```

3. **Navigasi Antar Halaman**

   - Gunakan sidebar menu
   - Klik logo BeatBay untuk kembali ke home
   - Gunakan breadcrumb untuk navigasi

4. **Test Fitur**
   - Play songs
   - Like/Unlike
   - Browse categories
   - Search (coming soon)

---

## 📱 Responsive Breakpoints

- **Desktop**: > 1400px (Full layout dengan 3 columns)
- **Tablet**: 1200px - 1400px (2 columns, hide right sidebar)
- **Mobile**: < 768px (1 column, collapsible sidebar)

---

## 🎵 Data Yang Tersedia

### Artists (4)

- Ed Sheeran (82.7M listeners)
- James Arthur (28M listeners)
- Taylor Swift (95M listeners)
- The Weeknd (110M listeners)

### Albums (6)

- Divide (2017)
- Multiply (2014)
- No 6 (2019)
- Equals (2021)
- Peru (2021) - Single
- X (2014)

### Songs (4)

- Shivers (1.9B plays)
- Shape of You (3B plays)
- Perfect (2.8B plays)
- Bad Habits (2.5B plays)

---

## 💡 Tips Penggunaan

1. **Semua gambar bersifat opsional** - Website menggunakan UI Avatars sebagai fallback
2. **Player di bottom bar** - Sticky dan selalu terlihat saat scroll
3. **Right sidebar** - Hidden di tablet/mobile untuk space
4. **Hover effects** - Semua cards memiliki hover interaction
5. **Active states** - Menu yang aktif ditandai dengan highlight

---

## 🔧 Customization

### Ganti Warna Tema

Edit `assets/css/main.css`:

```css
:root {
	--accent-green: #YOUR_COLOR; /* Ganti warna utama */
}
```

### Tambah Genre Baru

Edit controller Discover:

```php
array('name' => 'Your Genre', 'color' => '#COLOR', 'icon' => 'fa-icon')
```

### Tambah Radio Station

Edit controller Radio:

```php
array('name' => 'Station Name', 'description' => '...', ...)
```

---

## ✅ Selesai!

Website musik BeatBay Anda siap digunakan dengan 5 halaman lengkap:

1. ✅ Home - Artist Profile & Songs
2. ✅ Discover - Browse & Explore
3. ✅ Radio - Live Streaming
4. ✅ Albums - Music Collection
5. ✅ Podcast - Audio Shows

**Enjoy your music streaming website! 🎧**
