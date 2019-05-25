If this [First Masternode Script](https://github.com/ragnaproject/mnscripts/blob/master/README.MD#installation) is not working use this [Second Masternode Script](https://github.com/ragnaproject/mnscripts/blob/master/README.MD#installation-1)

# Ragnarok
Shell script to install a [Ragnarok Masternode](https://ragnaproject.io/) on a Linux server running Ubuntu 16.04.  [PDF Guide](https://ragnaproject.io/Ragnarok_Masternode_Guide.pdf)
***

## Installation
```
wget https://raw.githubusercontent.com/ragnaproject/mnscripts/master/ragna_install.sh 
```
```
chmod +x ragna_install.sh
```
```
./ragna_install.sh
```
***

## Desktop wallet setup  

After the MN is up and running, you need to configure the desktop wallet accordingly. Here are the steps:  
1. Open the Ragna Desktop Wallet.  
2. Go to RECEIVE and create a New Address: **MN1**  
3. Send **140000** RAGNA to **MN1**. You need to send all 140000 coins in one single transaction.
4. Wait for 15 confirmations.  
5. Go to **Tools -> "Debug console - Console"**
6. Type the following command: **masternode outputs**
7. Go to  ** Tools -> "Open Masternode Configuration File"
8. Add the following entry:
```
Alias Address Privkey TxHash Output_index
```
* Alias: **MN1**
* Address: **VPS_IP:PORT**
* Privkey: **Masternode Private Key**
* TxHash: **First value from Step 6** 
* Output index:  **Second value from Step 6** It can be **0** or **1**
9. Click OK and exit the Wallet.
10. Open bytepay Core Wallet, go to **Masternode Tab**. If you tab is not shown, please enable it from: **Settings - Options - Wallet - Show Masternodes Tab**
11. Click **Update status** to see your node. If it is not shown, close the wallet and start it again.
10. Click **Start All** or **Start Alias**
11. If you are not able to see your **Masternode**, try to close and open your desktop wallet.
***

## Usage:
```
startmasternode alias false <name>  # Start masternode replace <name> with your masternode alias
ragnarok-cli getblockcount #To get blockcount
ragnarok-cli stop #To stop masternode
./ragnarokd -resync &  #To Resync
watch ragnarok-cli getinfo  # Check syncing blocks
./ragnarokd -reindex # To Reindex
systemctl status ragnarok.service  #o check Ragnarok service status
systemctl start ragnarok.service  #To start Ragnarok service
systemctl stop ragnarok.service  #To stop Ragnarok service
ragnarok-cli masternode count  #To check masternode list

```

#You Can also install using the second installation script 

## Installation
```
wget -q https://raw.githubusercontent.com/ragnaproject/mnscripts/master/ragna2-mn.sh 
```
```
bash ragna2-mn.sh
```

## Desktop wallet setup  

After the MN is up and running, you need to configure the desktop wallet accordingly. Here are the steps:  
1. Open the Ragna Desktop Wallet.  
2. Go to RECEIVE and create a New Address: **MN1**  
3. Send **30000** RAGNA to **MN1**. You need to send all 30000 coins in one single transaction.
4. Wait for 15 confirmations.  
5. Go to **Tools -> "Debug console - Console"**
6. Type the following command: **masternode outputs**
7. Go to  ** Tools -> "Open Masternode Configuration File"
8. Add the following entry:
```
Alias Address Privkey TxHash Output_index
```
* Alias: **MN1**
* Address: **VPS_IP:PORT**
* Privkey: **Masternode Private Key**
* TxHash: **First value from Step 6** 
* Output index:  **Second value from Step 6** It can be **0** or **1**
9. Click OK and exit the Wallet.
10. Open bytepay Core Wallet, go to **Masternode Tab**. If you tab is not shown, please enable it from: **Settings - Options - Wallet - Show Masternodes Tab**
11. Click **Update status** to see your node. If it is not shown, close the wallet and start it again.
10. Click **Start All** or **Start Alias**
11. If you are not able to see your **Masternode**, try to close and open your desktop wallet.
***

## Usage:
```
startmasternode alias false <name>  # Start masternode replace <name> with your masternode alias
nano ~/.ragnarok/ragnarok.conf   #Conf File Location
ragnarokd -daemon #Start Daemon
ragnarok-cli getinfo #Get blockcount
ragnarok-cli masternode status #Check Masternode Status
watch ragnarok-cli getinfo #watch how the blocks while syncing
```
