# Hotspot-Autoconfig-toggle
a tool to disable windows network adapter (Wi-Fi) name broadcast and scan that happens every minute.


have you ever experienced a sudden lag spike when connected to windows 11's Mobile hotspot every 60 seconds?
this happens because the network adapter does a SSID scan for nearby networks every minute to discover Wi-Fi and let the mobile hotspot be discovered. this is called Auto Configuration.
normally this isn't issue with dual band network adapters which are capable of independant hotspot, but single band adapters have to use the same band for transmitting hotspot and connecting to wi-fi which they are not designed to do both. this scan causes a huge lag spike for any device connected to the hotspot in single band adapters.

this simple tool allows you to disable/enable auto config for your whole network adapter. disable it after all the devices are connected to your hotspot. disabling before connecting devices may cause your hotspot to not be discovered by other devices.
