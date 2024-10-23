if [ -d "hardware/xiaomi/megvii" ]; then
    rm -rf "hardware/xiaomi/megvii"
fi

#  v4a
echo 'Cloning V4a repository'
git clone -b v4a https://github.com/MT6789-Rock/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX
