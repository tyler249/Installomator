iclickercloud)
    name="iClicker Cloud"
    type="dmg"
    downloadURL=$(curl -sL "https://www.iclicker.com/downloads/iclicker-cloud" | grep -iEo 'https://downloads.iclicker.com/app-downloads/iclicker-cloud-[0-9]+\.[0-9]+\.[0-9]+-mac.dmg' | head -n 1)
    appNewVersion=$(echo "$downloadURL" | sed -E 's/.*cloud-([0-9]+\.[0-9]+\.[0-9]+)-mac.dmg/\1/')
    expectedTeamID=5E845CEVPW
    ;;
