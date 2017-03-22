# Release 1
### FIND THE THING

**1. What are some of the key design philosophies of the Linux operating system?**
> Linux is a fullymultitasking(a method where multiple tasks are performed during the same period of time),multiuseroperating system, with built-in networking and service processes known asdaemons in theUNIXworld.

> Linux borrows heavily from theUNIX operating system because it was written to be a free and open source version ofUNIX. Files are stored in a hierarchical filesystem, with the top node of the system beingrootor simply "/". Whenever possible, Linux makes its components available via files or objects that look like files. 
#### Philosophies of the Linux operating system:
> 1. Small is Beautiful
> 2. Each Program Does One Thing Well
> > 'Small is Beautiful' and 'Each Program Does One Thing Well', these two tenets go hand in hand. Each of the commands in this program is fairly small, and each performs a specific task. 
> 3. Prototype as Soon as Possible
> 4. Choose Portability Over Efficiency
> 5. Store Data in Flat Text Files
> 6. Use Software Leverage
> >The main aspect of software leverage is that good programmers write good code and great programmers borrow good code. Never rewrite code that has already been written.
> 7. Use Shell Scripts to Increase Leverage and Portability
> > The portability of shell scripts can be far more efficient in the long run than the perceived efficiency of writing a program in a compiled language—not even considering the time required to compile and test such a program—because they can run on many otherwise incompatible systems.
> 8. Avoid Captive User Interfaces
> 9. Make Every Program a Filter
----
**2. what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?**

#### VPN (virtual private server):
> A virtual private server is one that is partitioned so that it has its own operating system, disc space, and bandwidth. A virtual private server (VPS) is a virtual machine sold as a service by an Internet hosting service. A VPS runs its own copy of an operating system, and customers may have superuser-level access to that operating system instance, so they can install almost any software that runs on that OS.
#### Advantage of VPN:
> As with all types of web hosting, there are pros and cons to each and each one is suited to specific circumstances. Generally there are many advantages to hosting your site on a virtual private server. These include:

> - A VPS hosting account is less expensive than a full dedicated hosting plan that uses a physical server.
> - Many VPS plans can be customized to meet your needs so you pay for what you want but you do not need to deal with any features you will never need.
> - Many VPS hosting plans are easily scalable. You can start off in your virtual environment with the minimum amount of resources you need and then as you grow gradually increase your hosting plan to accommodate your needs. You do not have to pay for excessive resources you have not yet grown into.
> - You have a lot more control over your virtual server than you do with shared hosting. You will likely have root access and the ability to use scripts that may not be allowed in the shared hosting environment.
> - You have the same technical support as with shared hosting for most issues.
> - You can choose from semi managed hosting where the web host handles some maintenance and fully managed services.
-----
**3. Why is it considered a bad idea to run programs as the root user on a Linux system?**
> 1. You are much more prone to mistakes or software bugs. That program which deleted files as a bug? If it ran as a limited user, at most it can damage stuff in your home directory and on a few other devices (e.g. USB disks). If ran as root, it might have freedom to delete everything in the system. Besides, you might be the victim of a buggy script which accidentally deletes critical files.
> 2. Similarly, a vulnerability or malicious software can cause much more harm, because you gave it full permissions. It can change programs in /bin and add backdoors, mess with files in /etc and make the system unbootable etc...
> 3. You can be victim of your own stupidity. That rm -rf * you ran by mistake, or if you swapped input/output device in dd, would be stopped by your lack of permissions, but if you run as root, you are all powerful.
> 4. You don't need it for most uses, except for administrative work.
----