

# Installing a custom firmware to your router

### In this case, Shibby's mod of the Tomato router firmware to my asus rt-n66u

## A short love story

Shibby is a polish gentleman who blogs [here](http://tomato.groov.pl)

Shibby is a man, he likes modding tomato, he seems to own an asus rt-n16, and an asus rt-n66u (I own an asus rt-n66u also).
There is another man, named Toastman, I couldn't find out if he actually owned a rt-n66u, he does mod tomato also. I am going to use shibbys mod.

I have loved Tomato firmware ever since I used it back on my linksys wrt54gl, it turned a slow piece of junk that constantly needed rebooting, into a _godlike_ router. I would like to repeat that experience on my asus rt-n66u.

## Some reading

Some nomenclature links in-case you were as lost as I was when it comes to installing firmware mods for your router:

- tomato firmware has [naming conventions](http://tomatousb.org/doc:build-types#toc2) just read the naming convention part
- shibby's subset of tomato has [naming conventions](http://tomato.groov.pl/download/K26/build5x-108-EN/builds.png)
- shibby hosts his tomato firmware downloads [here](http://tomato.groov.pl/download/K26RT-N)

## Down to business

**Disclaimer: Flashing custom firmware to your router is dangerous, do not continue unless you know "what is up". No one will help you, I will not answer your emails or comments. Shibby won't. Asus definitely won't. Ask yourself, do you like brinks? Lastly, good luck and god speed you black emperor.**

1. Download and install the ASUS RT-N66U Firmware Restoration utility from [ASUS’ support site](http://support.asus.com/ServiceHome.aspx). Just enter RT-N66U in the search box and you should be able to find it. (Windows Only)

1. Download Shibby’s RT-N firmware. Get the latest version for your asus rt-n66u. Any edition of Shibby's Tomato works great, if you are not sure what your needs are, download the AIO version (AIO stands for All-in-one). Lots of people use the latest AIO version ([check for yourself](http://tomato.groov.pl/tomatoanon.php?model=Asus+RT-N66U))
As of Jan 03, 2014 I used the file called: "tomato-K26USB-1.28.RT-N5x-MIPSR2-115-AIO-64K.trx"

1. Connect the rt-n66u router to your computer with a network cable, but don’t turn it on yet. Make sure you isolate the router you will be flashing (Isolating the router can be easily achieved by connecting it directly to your computer with a network cable and disconnecting your computer from any wireless network you might be connected to).  At this point you don’t need an internet connection (since you have all the files you need now, and you see this guide).

1. Sanity check: At this point, your internet is disconnected for your computer, your router is off. Your computer is connected to the router via network cable (to one of the 4 lan ports). You have the .trx file. You have this guide.

1. Open the ASUS Firmware Restoration utility and load Shibby’s RT-N66U firmare, but don’t start the restoration process just yet.

1. While holding the reset button, turn the router on. After a short while, the power LED should start blinking. Release the reset button. The router is now in emergency firmware restore mode, ready to be flashed.

1. Start the restoration process in the ASUS Firmware Restoration utility.

1. You need to **wait**, it will take time to upload the firmware to the router and start the restoration process. If you get any warnings that the firmware is unknown, unofficial or similar warnings, just click OK (or similar) and continue. The flashing process might take **several minutes**. In my case it took more than 5 minutes. Note: Some users have reported that they get an error message from the firmware restoration utility. It seems like the reason for the error is that the flashing process is so slow the restoration utility gives up. But the flashing process is still running on the router. The solution is to just wait, but its not clear how long you have to wait. After a while, the router will restart itself, and when its done restarting itself, the wi-fi light will be turned on.

1. Sanity check: The router restarts and the wi-fi light is on. Good. But, you're not done yet.

1. Turn off the rt-n66u.

1. While holding the WPS button, turn the router on.

1. Keep holding the WPS button for at least 30 seconds and then release it.

1. The router should now reboot.

1. After the router has rebooted, open the browser of your choice and go to http://192.168.1.1/. When prompted to log in, you should change these after logging in the first time.

- username: root
- password: admin

## Let us reflect, like sentimental old people

- The above is my experience thanks to standing on the shoulders of the following:
  - some emails back and forth with my friend Justin Reid
  - Vegard's ["How To Flash Tomato on the asus rt-n66u"](https://www.vegard.net/archives/8250/) (the above is my rewording of this article)
  - Josh Enders [gist on the subject](https://gist.github.com/joshenders/3941269)

Thanks to [Justin Reid](https://twitter.com/jmreid), [Vegard Skjefstad](https://twitter.com/vegardskjefstad), [Josh Enders](https://twitter.com/joshenders), and anyone else who knows "What is up"

I am [Andrew](https://twitter.com/andrewstevens) (better google-able as [andxyz](http://andxyz.com))

Thanks for reading.

End of Transmission.

p.s. If you like your rt-n66u more now, donate a little cash to someone. [Donate to Shibby](http://www.google.com/search?q=tomato.groov.pl+donate)

