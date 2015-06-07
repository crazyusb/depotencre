#
#
#       Kickstart files for "Encre Ecologique" desktop
# Need to build two files, one for the workstation and one for the store
#
#
%include /usr/share/spin-kickstarts/l10n/fedora-live-workstation-fr_FR.ks

# Repo

# Base ozon repo
#repo --name="Repository for Ozon OS" --baseurl=http://goodies.ozon-os.com/repo/$releasever/ --cost=1000
repo --name="Local" --baseurl=file:///home/ben/repo
# RPMFusion repos
repo --name=rpmfusion-free --baseurl=http://download1.rpmfusion.org/free/fedora/releases/$releasever/Everything/$basearch/os
repo --name=rpmfusion-free-updates --baseurl=http://download1.rpmfusion.org/free/fedora/updates/$releasever/$basearch
repo --name=rpmfusion-non-free  --baseurl=http://download1.rpmfusion.org/nonfree/fedora/releases/$releasever/Everything/$basearch/os
repo --name=rpmfusion-non-free-updates --baseurl=http://download1.rpmfusion.org/nonfree/fedora/updates/$releasever/$basearch

%packages
#Ozon
ozon-repos
ozon-backgrounds
ozon-icon-theme
#Multimedia
vlc
gstreamer-plugins-ugly
#Sync
owncloud-client
#Gnome
gnome-system-monitor
gnome-tweak-tool
gnome-shell-extension-user-theme
gnome-shell-extension-apps-menu.noarch
gnome-shell-extension-places-menu.noarch
gnome-shell-extension-alternate-tab.noarch

#Android filesystem
libmtp
fuse-exfat
exfat-utils

# Remove unwanted packages
-bijiben
-gnome-documents
-gnome-boxes
-gcolor2
-seahorse
-gnome-abrt
-setroubleshoot
-gnome-logs
-vinagre
-ibus
%end
