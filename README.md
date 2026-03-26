### 🚨 RİCİNGİ KURMADAN ÖNCE KESİNLİKLE KURULMASI GEREKENLER (MUST INSTALL FIRST)

**[TR]** Dosyalarımı kopyalamadan önce, sistemin tüm özellikleriyle (dinamik renkler, bildirimler, duvar kağıdı motoru vb.) çalışması için aşağıdaki paketleri terminalden kurun:

**[EN]** Before copying the files, install the following packages from the terminal so that the system works with all its features (dynamic colors, notifications, wallpaper engine, etc.):

```bash
# 🛠️ Ana Bileşenler (Core Components)
sudo pacman -S hyprland waybar wofi wlogout kitty fastfetch

# 🎨 Dinamik Renkler & Görsellik (Visuals & Dynamic Colors)
sudo pacman -S pywal16 swww mpvpaper

# 🔔 Bildirimler & Kilit Ekranı (Notifications & Lockscreen)
sudo pacman -S swaync hyprlock

# 🔧 Yardımcı Araçlar (Helper Tools)
sudo pacman -S grim slurp wl-clipboard


![Screenshot](ss.png)



# 🚀 L€yzS Arch + Hyprland Dotfiles (V1.0) 🏁

### 🇹🇷 TÜRKÇE AÇIKLAMA

**🖼️ DUVAR KAĞIDI YÖNETİMİ:**
1. **Statik Seçim (WIN + W):** Menüden resim seçer. Resimlerinizi `~/.config/wallpapers` içine atın.
2. **Rastgele (WIN + R):** Klasörden rastgele bir resim seçer.
3. **Canlı Arka Plan Başlat (WIN + ALT + K):** `.mp4` videoları başlatır. Videolarınızı `~/.config/Live Wallpapers` içine atın.
4. **Canlı Arka Plan Değiştir (WIN + K):** Hareketli duvar kağıtları arasında pürüzsüz geçiş yapar.
5. **Mod Değişimi:** Hareketli moddayken `WIN + W` ile bir resim seçerseniz, video oynatıcı otomatik kapanır.

**🖥️ MONİTÖR AYARLARI (ÖNEMLİ):**
Bu config varsayılan olarak **DP-1** monitör için ayarlanmıştır. Eğer ekranınız gelmezse veya Waybar pencerelerin üstünde kalıyorsa:
1. Terminale `hyprctl monitors` yazıp kendi monitör isminizi (Örn: `HDMI-A-1`) öğrenin.
2. `~/.config/hypr/configs/monitors.conf` dosyasını açıp `DP-1` yazan yerleri kendi isminizle değiştirin.

**⌨️ TEMEL KISAYOLLAR:**
* 🔒 **Ekran Kilidi:** `WIN + L` | 🔍 **Uygulama Menüsü:** `WIN + A`
* ❌ **Pencere Kapat:** `WIN + Q` | 🛸 **Serbest Pencere:** `WIN + F`
* 🔢 **Çalışma Alanları:** `WIN + 1/2/3/4` | 🚚 **Pencere Taşıma:** `WIN + SHIFT + (Sayı)`

---

### 🇺🇸 ENGLISH DESCRIPTION

**🖼️ WALLPAPER MANAGEMENT:**
1. **Static Picker (WIN + W):** Pick an image from the menu. Put yours in `~/.config/wallpapers`.
2. **Randomizer (WIN + R):** Picks a random image from the folder.
3. **Start Live Wallpaper (WIN + ALT + K):** Starts `.mp4` videos. Put yours in `~/.config/Live Wallpapers`.
4. **Switch Live Wallpaper (WIN + K):** Smoothly switches between animated wallpapers.
5. **Switching Modes:** Selecting a static image via `WIN + W` will automatically close the video player.

**🖥️ MONITOR SETTINGS (IMPORTANT):**
This config is set for **DP-1** by default. If your screen doesn't show up or Waybar overlaps:
1. Type `hyprctl monitors` in terminal to find your monitor name (e.g., `HDMI-A-1`).
2. Open `~/.config/hypr/configs/monitors.conf` and replace `DP-1` with your monitor name.

**⌨️ CORE KEYBINDINGS:**
* 🔒 **Lock Screen:** `WIN + L` | 🔍 **App Launcher:** `WIN + A`
* ❌ **Close Window:** `WIN + Q` | 🛸 **Floating Mode:** `WIN + F`
* 🔢 **Workspaces:** `WIN + 1/2/3/4` | 🚚 **Move Window:** `WIN + SHIFT + (Number)`

🚀 Kurulum (Installation)
[TR] Sistemi hatasız kurmak için aşağıdaki komutları sırasıyla kopyalayıp terminalinize yapıştırın.
[EN] To install the system without errors, copy and paste the following commands into your terminal.

1. Gerekli Paketleri Yükleyin (Essential Packages)
Önce her şeyin çalışması için bu uygulamaları kurun:


sudo pacman -S hyprland kitty waybar wofi swww fastfetch wlogout swaync
yay -S matugen-bin ttf-jetbrains-mono-nerd
2. Dosyaları İndirin ve Kopyalayın (Clone & Copy)
Bu komutlar dosyaları bilgisayarınıza indirir ve .config klasörüne taşır:


git clone https://github.com/L3yzs/By-LeyzS-Arch-Hyprland-Dotfiles.git
cd By-LeyzS-Arch-Hyprland-Dotfiles
cp -r .config/* ~/.config/
3. Kullanıcı Adını Otomatik Düzeltin (Fix Username) 🪄
Çok Önemli: Dosyaların içindeki leyzs ismini tek komutla kendi kullanıcı adınıza çevirmek için bunu çalıştırın:


find ~/.config/ -type f -exec sed -i "s/leyzs/$(whoami)/g" {} +
⚠️ Önemli Notlar:
Wallpapers: Duvar kağıtları .config içindeki klasördedir, Hyprland ayarlarından yolu kontrol etmeyi unutmayın. 🖼️

Fontlar: İkonların düzgün gözükmesi için JetBrainsMono Nerd Font mutlaka yüklü olmalıdır. ✨

