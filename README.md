# Roku-mydlink-Home-Smart-Plug
An Example using Roku to Control a dlink Smart Plug over the network

## Requirements
1. A [Roku](https://www.roku.com/) that is in [developmer mode](https://blog.roku.com/developer/2016/02/04/developer-setup-guide/)
2. An Account at [IFTTT](https://ifttt.com)
3. A [Dlink Wi-Fi Smart Plug](http://us.dlink.com/products/connected-home/wi-fi-smart-plug/)
4. A Text Editor (for full Roku Brightscript Development use [Eclipse IDE for Java Developers](https://eclipse.org/) with the [Roku SDK Plugin](https://blog.roku.com/developer/2016/04/20/roku-eclipse-plugin/))

## Setup

#### The Smart Plug
1. Grab your dlink username & password
2. Successfully connect your smart plug to the network and verify it is functioning correctly from the Android or iOS application.

#### IFTTT
3. Login to IFTTT
4. Navigate to [Maker WebHooks](https://ifttt.com/maker_webhooks)
5. Enable your webhooks and access the 'documentation' button in the top right of the page
6. Copy the key, we will need this for the Roku Code section coming up
7. Return to your Applets and create a new Applet
8. For THIS select Maker Webhooks and name your request (you will also need this name coming up)
9. For THAT we will be selecting the DLINK SMART PLUG and Toggling it On/Off for 30 seconds.
10. Return to the documentation at [Maker WebHooks](https://ifttt.com/maker_webhooks) and enter your new event name from step 6
11. Verify it toggles your plug on/off

#### The Roku Code
12. open 'components/SimpleTask.xml' in an editor
13. change '{YOUR API KEY HERE}' to the API Key you generated in IFTTT step 4.
14. change '{EVENT}' to the event name you generated in IFTTT step 6.
15. rezip the directory and use the Roku Development Portal (usually 192.168.1.12) to upload the package.
Note: Updating the package instantly fires the command we set up in IFTTT earlier.
