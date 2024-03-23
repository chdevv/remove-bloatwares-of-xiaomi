#bash script to remove Xiaomi bloatware

#autor: grand0rbiter
#fonte: https://forum.adrenaline.com.br/threads/aplicativos-de-bancos-e-roms-customizadas.676266/post-1075182490


removeBloat=(
    #com.android.browser
    #com.android.chrome 
    com.android.calendar
    com.facebook.appmanager
    com.facebook.katana
    com.facebook.services
    com.facebook.system
    com.mi.android.globalFileexplorer
    com.mi.android.globalminusscreen
    com.miui.audiomonitor
    com.miui.bugreport
    com.miui.calculator
    com.miui.cleanmaster
    com.miui.compass
    com.miui.fm
    com.miui.fmservice
    com.miui.gallery
    com.miui.mishare.connectivity
    com.miui.misound
    com.miui.notes
    com.miui.player
    com.miui.screenrecorder
    com.miui.weather2
    com.netflix.mediaclient
    com.netflix.partner.activation
    com.xiaomi.midrop
    com.xiaomi.payment
    com.xiaomi.scanner
    com.miui.cloudbackup
    com.miui.cloudservice
    com.miui.cloudservice.sysbase
    com.mipay.wallet.id
    com.mipay.wallet.in
    com.miui.backup
    com.miui.micloudsync
    com.miui.translation.kingsoft
    com.miui.translation.xmcloud
    com.miui.translation.youdao
    com.miui.hybrid.accessory
    com.tencent.soter.soterserver
    com.xiaomi.bluetooth
    com.xiaomi.bluetooth.overlay
    com.xiaomi.bttester
    com.miui.yellowpage
    com.xiaomi.account
    com.miui.miservice
    com.xiaomi.mi_connect_service
    com.xiaomi.micloud.sdk
    com.xiaomi.mipicks
    com.xiaomi.miplay_client
    com.xiaomi.joyose
    com.xiaomi.mirecycle
    com.xiaomi.simactivate.service
    com.milink.service
    com.duokan.phone.remotecontroller
    cn.wps.xiaomi.abroad.lite
    com.miui.android.fashiongallery
    com.miui.hybrid
    com.miui.userguide
    com.miui.msa.global
    com.miui.analytics
    com.xiaomi.glgm
    com.xiaomi.xmsf
    com.micredit.in
    com.google.android.apps.tachyon
    com.google.android.apps.wellbeing
    com.google.android.feedback
    com.google.android.googlequicksearchbox
    com.google.android.marvin.talkback
    com.google.android.printservice.recommendation
    com.google.android.projection.gearhead
    com.google.android.syncadapters.calendar
    com.google.android.gm
    com.google.android.youtube
    com.google.android.apps.docs
    com.google.android.apps.photos
    com.google.android.music
    com.google.android.videos
    com.google.android.apps.cloudprint
)

# apps that can't be removed
disableBloat=(
    com.mi.globalbrowser
    com.miui.videoplayer
)

for item in "${removeBloat[@]}"; do
    adb shell pm uninstall -k --user 0 "$item"
done

for item in "${disableBloat[@]}"; do
    adb shell pm disable-user "$item"
done
