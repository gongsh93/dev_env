echo "Installing Kakaotalk..."

sudo apt install wine-stable cabextract
rm -rf ~/.wine
WINEARCH=win32 WINEPREFIC=~/.wine wine wineboot

sudo apt install winetricks
winetricks d3dx9_43
winetricks gdiplus
winetricks riched30
winetricks msxml6
winetricks wmp9
cp ../rsc/gulim.ttc ~/.wine/drive_c/windows/Fonts
chmod 644 ~/.wine/drive_c/windows/Fonts/gulim.ttc 

wget http://app.pc.kakao.com/talk/win32/KakaoTalk_Setup.exe

