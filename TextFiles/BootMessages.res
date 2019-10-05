[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 4.19.66-v7+ (dom@buildbot) (gcc version 4.9.3 (crosstool-NG crosstool-ng-1.22.0-88-g8460611)) #1253 SMP Thu Aug 15 11:49:46 BST 2019
[    0.000000] CPU: ARMv7 Processor [410fd034] revision 4 (ARMv7), cr=10c5383d
[    0.000000] CPU: div instructions available: patching division code
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
[    0.000000] OF: fdt: Machine model: Raspberry Pi 3 Model B Rev 1.2
[    0.000000] Memory policy: Data cache writealloc
[    0.000000] cma: Reserved 8 MiB at 0x3ac00000
[    0.000000] On node 0 totalpages: 242688
[    0.000000]   Normal zone: 2133 pages used for memmap
[    0.000000]   Normal zone: 0 pages reserved
[    0.000000]   Normal zone: 242688 pages, LIFO batch:63
[    0.000000] random: get_random_bytes called from start_kernel+0xac/0x4b4 with crng_init=0
[    0.000000] percpu: Embedded 17 pages/cpu s39488 r8192 d21952 u69632
[    0.000000] pcpu-alloc: s39488 r8192 d21952 u69632 alloc=17*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 240555
[    0.000000] Kernel command line: coherent_pool=1M 8250.nr_uarts=0 bcm2708_fb.fbwidth=1920 bcm2708_fb.fbheight=1080 bcm2708_fb.fbswap=1 vc_mem.mem_base=0x3ec00000 vc_mem.mem_size=0x40000000  dwc_otg.lpm_enable=0 console=ttyS0,115200 console=tty1 root=PARTUUID=d29cb905-02 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait quiet splash plymouth.ignore-serial-consoles
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] Memory: 939088K/970752K available (8192K kernel code, 629K rwdata, 2176K rodata, 1024K init, 821K bss, 23472K reserved, 8192K cma-reserved)
[    0.000000] Virtual kernel memory layout:
                   vector  : 0xffff0000 - 0xffff1000   (   4 kB)
                   fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
                   vmalloc : 0xbb800000 - 0xff800000   (1088 MB)
                   lowmem  : 0x80000000 - 0xbb400000   ( 948 MB)
                   modules : 0x7f000000 - 0x80000000   (  16 MB)
                     .text : 0x(ptrval) - 0x(ptrval)   (9184 kB)
                     .init : 0x(ptrval) - 0x(ptrval)   (1024 kB)
                     .data : 0x(ptrval) - 0x(ptrval)   ( 630 kB)
                      .bss : 0x(ptrval) - 0x(ptrval)   ( 822 kB)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] ftrace: allocating 26394 entries in 78 pages
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
[    0.000000] arch_timer: cp15 timer(s) running at 19.20MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x46d987e47, max_idle_ns: 440795202767 ns
[    0.000007] sched_clock: 56 bits at 19MHz, resolution 52ns, wraps every 4398046511078ns
[    0.000019] Switching to timer-based delay loop, resolution 52ns
[    0.000280] Console: colour dummy device 80x30
[    0.000298] console [tty1] enabled
[    0.000342] Calibrating delay loop (skipped), value calculated using timer frequency.. 38.40 BogoMIPS (lpj=192000)
[    0.000357] pid_max: default: 32768 minimum: 301
[    0.000696] Mount-cache hash table entries: 2048 (order: 1, 8192 bytes)
[    0.000713] Mountpoint-cache hash table entries: 2048 (order: 1, 8192 bytes)
[    0.001624] CPU: Testing write buffer coherency: ok
[    0.002086] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
[    0.002733] Setting up static identity map for 0x100000 - 0x10003c
[    0.002881] rcu: Hierarchical SRCU implementation.
[    0.003676] smp: Bringing up secondary CPUs ...
[    0.004509] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001
[    0.005430] CPU2: thread -1, cpu 2, socket 0, mpidr 80000002
[    0.006286] CPU3: thread -1, cpu 3, socket 0, mpidr 80000003
[    0.006408] smp: Brought up 1 node, 4 CPUs
[    0.006420] SMP: Total of 4 processors activated (153.60 BogoMIPS).
[    0.006426] CPU: All CPU(s) started in HYP mode.
[    0.006431] CPU: Virtualization extensions available.
[    0.007405] devtmpfs: initialized
[    0.020545] VFP support v0.3: implementor 41 architecture 3 part 40 variant 3 rev 4
[    0.020785] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.020804] futex hash table entries: 1024 (order: 4, 65536 bytes)
[    0.021393] pinctrl core: initialized pinctrl subsystem
[    0.022254] NET: Registered protocol family 16
[    0.025296] DMA: preallocated 1024 KiB pool for atomic coherent allocations
[    0.031094] hw-breakpoint: found 5 (+1 reserved) breakpoint and 4 watchpoint registers.
[    0.031102] hw-breakpoint: maximum watchpoint size is 8 bytes.
[    0.031303] Serial: AMBA PL011 UART driver
[    0.033580] bcm2835-mbox 3f00b880.mailbox: mailbox enabled
[    0.068818] bcm2835-dma 3f007000.dma: DMA legacy API manager at (ptrval), dmachans=0x1
[    0.070500] SCSI subsystem initialized
[    0.070716] usbcore: registered new interface driver usbfs
[    0.070777] usbcore: registered new interface driver hub
[    0.070870] usbcore: registered new device driver usb
[    0.090125] raspberrypi-firmware soc:firmware: Attached to firmware from 2019-08-15 12:06, variant start
[    0.100380] raspberrypi-firmware soc:firmware: Firmware hash is 0e6daa5106dd4164474616408e0dc24f997ffcf3
[    0.111801] clocksource: Switched to clocksource arch_sys_counter
[    0.200889] VFS: Disk quotas dquot_6.6.0
[    0.200970] VFS: Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    0.201126] FS-Cache: Loaded
[    0.201335] CacheFiles: Loaded
[    0.211321] NET: Registered protocol family 2
[    0.212114] tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 6144 bytes)
[    0.212151] TCP established hash table entries: 8192 (order: 3, 32768 bytes)
[    0.212261] TCP bind hash table entries: 8192 (order: 4, 65536 bytes)
[    0.212446] TCP: Hash tables configured (established 8192 bind 8192)
[    0.212580] UDP hash table entries: 512 (order: 2, 16384 bytes)
[    0.212626] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes)
[    0.212933] NET: Registered protocol family 1
[    0.213502] RPC: Registered named UNIX socket transport module.
[    0.213508] RPC: Registered udp transport module.
[    0.213514] RPC: Registered tcp transport module.
[    0.213520] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.215325] hw perfevents: enabled with armv7_cortex_a7 PMU driver, 7 counters available
[    0.218335] Initialise system trusted keyrings
[    0.218521] workingset: timestamp_bits=14 max_order=18 bucket_order=4
[    0.228458] FS-Cache: Netfs 'nfs' registered for caching
[    0.229026] NFS: Registering the id_resolver key type
[    0.229059] Key type id_resolver registered
[    0.229065] Key type id_legacy registered
[    0.229082] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.231341] Key type asymmetric registered
[    0.231350] Asymmetric key parser 'x509' registered
[    0.231399] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 250)
[    0.231555] io scheduler noop registered
[    0.231563] io scheduler deadline registered (default)
[    0.231735] io scheduler cfq registered
[    0.231743] io scheduler mq-deadline registered (default)
[    0.231750] io scheduler kyber registered
[    0.234985] bcm2708_fb soc:fb: FB found 1 display(s)
[    0.292079] Console: switching to colour frame buffer device 240x67
[    0.323974] bcm2708_fb soc:fb: Registered framebuffer for display 0, size 1920x1080
[    0.326195] bcm2835-rng 3f104000.rng: hwrng registered
[    0.326515] vc-mem: phys_addr:0x00000000 mem_base=0x3ec00000 mem_size:0x40000000(1024 MiB)
[    0.327048] vc-sm: Videocore shared memory driver
[    0.327369] gpiomem-bcm2835 3f200000.gpiomem: Initialised: Registers at 0x3f200000
[    0.338307] brd: module loaded
[    0.348845] loop: module loaded
[    0.349486] Loading iSCSI transport class v2.0-870.
[    0.350203] libphy: Fixed MDIO Bus: probed
[    0.350305] usbcore: registered new interface driver lan78xx
[    0.350363] usbcore: registered new interface driver smsc95xx
[    0.350379] dwc_otg: version 3.00a 10-AUG-2012 (platform bus)
[    0.378241] dwc_otg 3f980000.usb: base=(ptrval)
[    0.578484] Core Release: 2.80a
[    0.578493] Setting default values for core params
[    0.578534] Finished setting default values for core params
[    0.778853] Using Buffer DMA mode
[    0.778860] Periodic Transfer Interrupt Enhancement - disabled
[    0.778865] Multiprocessor Interrupt Enhancement - disabled
[    0.778873] OTG VER PARAM: 0, OTG VER FLAG: 0
[    0.778888] Dedicated Tx FIFOs mode
[    0.779385] WARN::dwc_otg_hcd_init:1045: FIQ DMA bounce buffers: virt = bad04000 dma = 0xfad04000 len=9024
[    0.779414] FIQ FSM acceleration enabled for :
               Non-periodic Split Transactions
               Periodic Split Transactions
               High-Speed Isochronous Endpoints
               Interrupt/Control Split Transaction hack enabled
[    0.779423] dwc_otg: Microframe scheduler enabled
[    0.779482] WARN::hcd_init_fiq:457: FIQ on core 1
[    0.779493] WARN::hcd_init_fiq:458: FIQ ASM at 80654f4c length 36
[    0.779506] WARN::hcd_init_fiq:497: MPHI regs_base at bb810000
[    0.779522] dwc_otg 3f980000.usb: DWC OTG Controller
[    0.779559] dwc_otg 3f980000.usb: new USB bus registered, assigned bus number 1
[    0.779592] dwc_otg 3f980000.usb: irq 56, io mem 0x00000000
[    0.779646] Init: Port Power? op_state=1
[    0.779651] Init: Power Port (0)
[    0.779918] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 4.19
[    0.779930] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    0.779939] usb usb1: Product: DWC OTG Controller
[    0.779948] usb usb1: Manufacturer: Linux 4.19.66-v7+ dwc_otg_hcd
[    0.779957] usb usb1: SerialNumber: 3f980000.usb
[    0.780608] hub 1-0:1.0: USB hub found
[    0.780666] hub 1-0:1.0: 1 port detected
[    0.781253] dwc_otg: FIQ enabled
[    0.781259] dwc_otg: NAK holdoff enabled
[    0.781265] dwc_otg: FIQ split-transaction FSM enabled
[    0.781275] Module dwc_common_port init
[    0.781535] usbcore: registered new interface driver usb-storage
[    0.781716] mousedev: PS/2 mouse device common for all mice
[    0.782649] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 watchdog timer
[    0.783104] bcm2835-cpufreq: min=600000 max=1200000
[    0.783581] sdhci: Secure Digital Host Controller Interface driver
[    0.783587] sdhci: Copyright(c) Pierre Ossman
[    0.783968] mmc-bcm2835 3f300000.mmcnr: could not get clk, deferring probe
[    0.784359] sdhost-bcm2835 3f202000.mmc: could not get clk, deferring probe
[    0.784484] sdhci-pltfm: SDHCI platform and OF driver helper
[    0.786033] ledtrig-cpu: registered to indicate activity on CPUs
[    0.786220] hidraw: raw HID events driver (C) Jiri Kosina
[    0.786386] usbcore: registered new interface driver usbhid
[    0.786391] usbhid: USB HID core driver
[    0.787330] vchiq: vchiq_init_state: slot_zero = (ptrval), is_master = 0
[    0.788790] [vc_sm_connected_init]: start
[    0.798583] [vc_sm_connected_init]: end - returning 0
[    0.799732] Initializing XFRM netlink socket
[    0.799762] NET: Registered protocol family 17
[    0.799883] Key type dns_resolver registered
[    0.800471] Registering SWP/SWPB emulation handler
[    0.801133] registered taskstats version 1
[    0.801158] Loading compiled-in X.509 certificates
[    0.808472] uart-pl011 3f201000.serial: cts_event_workaround enabled
[    0.808558] 3f201000.serial: ttyAMA0 at MMIO 0x3f201000 (irq = 81, base_baud = 0) is a PL011 rev2
[    0.810483] mmc-bcm2835 3f300000.mmcnr: mmc_debug:0 mmc_debug2:0
[    0.810495] mmc-bcm2835 3f300000.mmcnr: DMA channel allocated
[    0.835199] sdhost: log_buf @ (ptrval) (fad07000)
[    0.871406] mmc1: queuing unknown CIS tuple 0x80 (2 bytes)
[    0.872979] mmc1: queuing unknown CIS tuple 0x80 (3 bytes)
[    0.874542] mmc1: queuing unknown CIS tuple 0x80 (3 bytes)
[    0.877341] mmc1: queuing unknown CIS tuple 0x80 (7 bytes)
[    0.881829] mmc0: sdhost-bcm2835 loaded - DMA enabled (>1)
[    0.883152] of_cfs_init
[    0.883250] of_cfs_init: OK
[    0.883915] Waiting for root device PARTUUID=d29cb905-02...
[    0.950409] random: fast init done
[    0.972110] mmc0: host does not support reading read-only switch, assuming write-enable
[    0.976413] mmc0: new high speed SDHC card at address aaaa
[    0.977808] mmcblk0: mmc0:aaaa SP32G 29.7 GiB
[    0.980137]  mmcblk0: p1 p2
[    0.992155] Indeed it is in host mode hprt0 = 00021501
[    1.006229] EXT4-fs (mmcblk0p2): INFO: recovery required on readonly filesystem
[    1.006239] EXT4-fs (mmcblk0p2): write access will be enabled during recovery
[    1.053993] mmc1: new high speed SDIO card at address 0001
[    1.201844] usb 1-1: new high-speed USB device number 2 using dwc_otg
[    1.201989] Indeed it is in host mode hprt0 = 00001101
[    1.442129] usb 1-1: New USB device found, idVendor=0424, idProduct=9514, bcdDevice= 2.00
[    1.442143] usb 1-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    1.442846] hub 1-1:1.0: USB hub found
[    1.442954] hub 1-1:1.0: 5 ports detected
[    1.549749] EXT4-fs (mmcblk0p2): orphan cleanup on readonly fs
[    1.572645] EXT4-fs (mmcblk0p2): 5 orphan inodes deleted
[    1.572655] EXT4-fs (mmcblk0p2): recovery complete
[    1.587781] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data mode. Opts: (null)
[    1.587850] VFS: Mounted root (ext4 filesystem) readonly on device 179:2.
[    1.588598] devtmpfs: mounted
[    1.594331] Freeing unused kernel memory: 1024K
[    1.622203] Run /sbin/init as init process
[    1.761869] usb 1-1.1: new high-speed USB device number 3 using dwc_otg
[    1.892189] usb 1-1.1: New USB device found, idVendor=0424, idProduct=ec00, bcdDevice= 2.00
[    1.892206] usb 1-1.1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    1.894958] smsc95xx v1.0.6
[    1.985317] smsc95xx 1-1.1:1.0 eth0: register 'smsc95xx' at usb-3f980000.usb-1.1, smsc95xx USB 2.0 Ethernet, b8:27:eb:94:ac:9c
[    2.186380] systemd[1]: System time before build time, advancing clock.
[    2.314243] NET: Registered protocol family 10
[    2.315834] Segment Routing with IPv6
[    2.359742] systemd[1]: systemd 241 running in system mode. (+PAM +AUDIT +SELINUX +IMA +APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT +GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD -IDN2 +IDN -PCRE2 default-hierarchy=hybrid)
[    2.360660] systemd[1]: Detected architecture arm.
[    2.369223] systemd[1]: Set hostname to <raspberrypi>.
[    2.381131] systemd[1]: Failed to bump fs.file-max, ignoring: Invalid argument
[    2.730225] systemd[1]: File /lib/systemd/system/systemd-journald.service:12 configures an IP firewall (IPAddressDeny=any), but the local system does not support BPF/cgroup based firewalling.
[    2.730248] systemd[1]: Proceeding WITHOUT firewalling in effect! (This warning is only shown for the first loaded unit using IP firewalling.)
[    3.237949] random: systemd: uninitialized urandom read (16 bytes read)
[    3.250318] random: systemd: uninitialized urandom read (16 bytes read)
[    3.259782] systemd[1]: Listening on Syslog Socket.
[    3.260847] random: systemd: uninitialized urandom read (16 bytes read)
[    3.261492] systemd[1]: Set up automount Arbitrary Executable File Formats File System Automount Point.
[    3.265792] systemd[1]: Created slice User and Session Slice.
[    3.268642] systemd[1]: Created slice system-getty.slice.
[    3.498681] i2c /dev entries driver
[    4.043264] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)
[    4.180282] systemd-journald[107]: Received request to flush runtime journal from PID 1
[    4.790764] vc_sm_cma: module is from the staging directory, the quality is unknown, you have been warned.
[    4.794460] media: Linux media interface: v0.10
[    4.800109] bcm2835_vc_sm_cma_probe: Videocore shared memory driver
[    4.800138] [vc_sm_connected_init]: start
[    4.823212] [vc_sm_connected_init]: installed successfully
[    4.836049] videodev: Linux video capture interface: v2.00
[    4.886247] bcm2835_mmal_vchiq: module is from the staging directory, the quality is unknown, you have been warned.
[    4.891162] bcm2835_mmal_vchiq: module is from the staging directory, the quality is unknown, you have been warned.
[    4.905719] bcm2835_v4l2: module is from the staging directory, the quality is unknown, you have been warned.
[    4.915748] bcm2835_codec: module is from the staging directory, the quality is unknown, you have been warned.
[    4.926607] bcm2835-codec bcm2835-codec: Device registered as /dev/video10
[    4.926622] bcm2835-codec bcm2835-codec: Loaded V4L2 decode
[    4.935916] bcm2835-codec bcm2835-codec: Device registered as /dev/video11
[    4.935935] bcm2835-codec bcm2835-codec: Loaded V4L2 encode
[    4.941952] bcm2835-codec bcm2835-codec: Device registered as /dev/video12
[    4.941971] bcm2835-codec bcm2835-codec: Loaded V4L2 isp
[    5.001361] snd_bcm2835: module is from the staging directory, the quality is unknown, you have been warned.
[    5.010143] bcm2835_audio soc:audio: card created with 8 channels
[    5.172649] cfg80211: Loading compiled-in X.509 certificates for regulatory database
[    5.349343] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    5.502236] brcmfmac: F1 signature read @0x18000000=0x1541a9a6
[    5.511791] brcmfmac: brcmf_fw_alloc_request: using brcm/brcmfmac43430-sdio for chip BCM43430/1
[    5.512221] usbcore: registered new interface driver brcmfmac
[    5.755806] brcmfmac: brcmf_fw_alloc_request: using brcm/brcmfmac43430-sdio for chip BCM43430/1
[    5.755919] brcmfmac: brcmf_c_process_clm_blob: no clm_blob available (err=-2), device may have limited channels available
[    5.756663] brcmfmac: brcmf_c_preinit_dcmds: Firmware: BCM43430/1 wl0: Oct 23 2017 03:55:53 version 7.45.98.38 (r674442 CY) FWID 01-e58d219f
[    7.614341] random: crng init done
[    7.614357] random: 7 urandom warning(s) missed due to ratelimiting
[    7.815395] 8021q: 802.1Q VLAN Support v1.8
[    7.979665] uart-pl011 3f201000.serial: no DMA platform data
[    8.381399] Adding 102396k swap on /var/swap.  Priority:-2 extents:1 across:102396k SSFS
[    8.520200] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[    8.520230] brcmfmac: power management disabled
[    8.983258] smsc95xx 1-1.1:1.0 eth0: hardware isn't capable of remote wakeup
[    8.983490] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[    9.853037] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[   12.840837] Bluetooth: Core ver 2.22
[   12.840888] NET: Registered protocol family 31
[   12.840892] Bluetooth: HCI device and connection manager initialized
[   12.840906] Bluetooth: HCI socket layer initialized
[   12.840913] Bluetooth: L2CAP socket layer initialized
[   12.840936] Bluetooth: SCO socket layer initialized
[   12.896403] Bluetooth: HCI UART driver ver 2.3
[   12.896412] Bluetooth: HCI UART protocol H4 registered
[   12.896511] Bluetooth: HCI UART protocol Three-wire (H5) registered
[   12.896962] Bluetooth: HCI UART protocol Broadcom registered
[   13.241587] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[   13.241597] Bluetooth: BNEP filters: protocol multicast
[   13.241614] Bluetooth: BNEP socket layer initialized
[   13.304730] Bluetooth: RFCOMM TTY layer initialized
[   13.304753] Bluetooth: RFCOMM socket layer initialized
[   13.304776] Bluetooth: RFCOMM ver 1.11
[   15.582377] fuse init (API version 7.27)


