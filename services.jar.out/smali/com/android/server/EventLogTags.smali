.class public Lcom/android/server/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final BACKUP_AGENT_FAILURE:I = 0xb07

.field public static final BACKUP_DATA_CHANGED:I = 0xb04

.field public static final BACKUP_INITIALIZE:I = 0xb0b

.field public static final BACKUP_PACKAGE:I = 0xb08

.field public static final BACKUP_RESET:I = 0xb0a

.field public static final BACKUP_START:I = 0xb05

.field public static final BACKUP_SUCCESS:I = 0xb09

.field public static final BACKUP_TRANSPORT_FAILURE:I = 0xb06

.field public static final BATTERY_DISCHARGE:I = 0xaaa

.field public static final BATTERY_LEVEL:I = 0xaa2

.field public static final BATTERY_STATUS:I = 0xaa3

.field public static final BOOT_PROGRESS_PMS_DATA_SCAN_START:I = 0xc08

.field public static final BOOT_PROGRESS_PMS_READY:I = 0xc1c

.field public static final BOOT_PROGRESS_PMS_SCAN_END:I = 0xc12

.field public static final BOOT_PROGRESS_PMS_START:I = 0xbf4

.field public static final BOOT_PROGRESS_PMS_SYSTEM_SCAN_START:I = 0xbfe

.field public static final BOOT_PROGRESS_SYSTEM_RUN:I = 0xbc2

.field public static final CACHE_FILE_DELETED:I = 0xabc

.field public static final CONFIG_INSTALL_FAILED:I = 0xc864

.field public static final CONNECTIVITY_STATE_CHANGED:I = 0xc364

.field public static final DOCK_BATTERY_LEVEL:I = 0xab2

.field public static final DOCK_BATTERY_STATUS:I = 0xab3

.field public static final FREE_STORAGE_CHANGED:I = 0xab8

.field public static final FREE_STORAGE_LEFT:I = 0xaba

.field public static final FSTRIM_FINISH:I = 0xac4

.field public static final FSTRIM_START:I = 0xac3

.field public static final IDLE_MAINTENANCE_WINDOW_FINISH:I = 0xac2

.field public static final IDLE_MAINTENANCE_WINDOW_START:I = 0xac1

.field public static final IFW_INTENT_MATCHED:I = 0xc8c8

.field public static final IMF_FORCE_RECONNECT_IME:I = 0x7d00

.field public static final LOCKDOWN_VPN_CONNECTED:I = 0xc801

.field public static final LOCKDOWN_VPN_CONNECTING:I = 0xc800

.field public static final LOCKDOWN_VPN_ERROR:I = 0xc802

.field public static final LOW_STORAGE:I = 0xab9

.field public static final NETSTATS_MOBILE_SAMPLE:I = 0xc79c

.field public static final NETSTATS_WIFI_SAMPLE:I = 0xc79d

.field public static final NOTIFICATION_CANCEL:I = 0xabf

.field public static final NOTIFICATION_CANCEL_ALL:I = 0xac0

.field public static final NOTIFICATION_ENQUEUE:I = 0xabe

.field public static final POWER_PARTIAL_WAKE_STATE:I = 0xaa9

.field public static final POWER_SCREEN_BROADCAST_DONE:I = 0xaa6

.field public static final POWER_SCREEN_BROADCAST_SEND:I = 0xaa5

.field public static final POWER_SCREEN_BROADCAST_STOP:I = 0xaa7

.field public static final POWER_SCREEN_STATE:I = 0xaa8

.field public static final POWER_SLEEP_REQUESTED:I = 0xaa4

.field public static final RESTORE_AGENT_FAILURE:I = 0xb10

.field public static final RESTORE_PACKAGE:I = 0xb11

.field public static final RESTORE_START:I = 0xb0e

.field public static final RESTORE_SUCCESS:I = 0xb12

.field public static final RESTORE_TRANSPORT_FAILURE:I = 0xb0f

.field public static final UNKNOWN_SOURCES_ENABLED:I = 0xc26

.field public static final WATCHDOG:I = 0xaf2

.field public static final WATCHDOG_HARD_RESET:I = 0xaf5

.field public static final WATCHDOG_MEMINFO:I = 0xaf9

.field public static final WATCHDOG_PROC_PSS:I = 0xaf3

.field public static final WATCHDOG_PROC_STATS:I = 0xaf7

.field public static final WATCHDOG_PSS_STATS:I = 0xaf6

.field public static final WATCHDOG_REQUESTED_REBOOT:I = 0xafb

.field public static final WATCHDOG_SCHEDULED_REBOOT:I = 0xaf8

.field public static final WATCHDOG_SOFT_RESET:I = 0xaf4

.field public static final WATCHDOG_VMSTAT:I = 0xafa

.field public static final WM_HOME_STACK_MOVED:I = 0x791d

.field public static final WM_NO_SURFACE_MEMORY:I = 0x7918

.field public static final WM_STACK_CREATED:I = 0x791c

.field public static final WM_STACK_REMOVED:I = 0x791e

.field public static final WM_TASK_CREATED:I = 0x7919

.field public static final WM_TASK_MOVED:I = 0x791a

.field public static final WM_TASK_REMOVED:I = 0x791b


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 342
    const/16 v0, 0xb07

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 343
    return-void
.end method

.method public static writeBackupDataChanged(Ljava/lang/String;)V
    .locals 1
    .param p0, "package_"    # Ljava/lang/String;

    .prologue
    .line 330
    const/16 v0, 0xb04

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 331
    return-void
.end method

.method public static writeBackupInitialize()V
    .locals 2

    .prologue
    .line 358
    const/16 v0, 0xb0b

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 359
    return-void
.end method

.method public static writeBackupPackage(Ljava/lang/String;I)V
    .locals 4
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 346
    const/16 v0, 0xb08

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 347
    return-void
.end method

.method public static writeBackupReset(Ljava/lang/String;)V
    .locals 1
    .param p0, "transport"    # Ljava/lang/String;

    .prologue
    .line 354
    const/16 v0, 0xb0a

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 355
    return-void
.end method

.method public static writeBackupStart(Ljava/lang/String;)V
    .locals 1
    .param p0, "transport"    # Ljava/lang/String;

    .prologue
    .line 334
    const/16 v0, 0xb05

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 335
    return-void
.end method

.method public static writeBackupSuccess(II)V
    .locals 4
    .param p0, "packages"    # I
    .param p1, "time"    # I

    .prologue
    .line 350
    const/16 v0, 0xb09

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 351
    return-void
.end method

.method public static writeBackupTransportFailure(Ljava/lang/String;)V
    .locals 1
    .param p0, "package_"    # Ljava/lang/String;

    .prologue
    .line 338
    const/16 v0, 0xb06

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 339
    return-void
.end method

.method public static writeBatteryDischarge(JII)V
    .locals 4
    .param p0, "duration"    # J
    .param p2, "minlevel"    # I
    .param p3, "maxlevel"    # I

    .prologue
    .line 226
    const/16 v0, 0xaaa

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 227
    return-void
.end method

.method public static writeBatteryLevel(III)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "voltage"    # I
    .param p2, "temperature"    # I

    .prologue
    .line 218
    const/16 v0, 0xaa2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 219
    return-void
.end method

.method public static writeBatteryStatus(IIIILjava/lang/String;)V
    .locals 4
    .param p0, "status"    # I
    .param p1, "health"    # I
    .param p2, "present"    # I
    .param p3, "plugged"    # I
    .param p4, "technology"    # Ljava/lang/String;

    .prologue
    .line 222
    const/16 v0, 0xaa3

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 223
    return-void
.end method

.method public static writeBootProgressPmsDataScanStart(J)V
    .locals 1
    .param p0, "time"    # J

    .prologue
    .line 394
    const/16 v0, 0xc08

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 395
    return-void
.end method

.method public static writeBootProgressPmsReady(J)V
    .locals 1
    .param p0, "time"    # J

    .prologue
    .line 402
    const/16 v0, 0xc1c

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 403
    return-void
.end method

.method public static writeBootProgressPmsScanEnd(J)V
    .locals 1
    .param p0, "time"    # J

    .prologue
    .line 398
    const/16 v0, 0xc12

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 399
    return-void
.end method

.method public static writeBootProgressPmsStart(J)V
    .locals 1
    .param p0, "time"    # J

    .prologue
    .line 386
    const/16 v0, 0xbf4

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 387
    return-void
.end method

.method public static writeBootProgressPmsSystemScanStart(J)V
    .locals 1
    .param p0, "time"    # J

    .prologue
    .line 390
    const/16 v0, 0xbfe

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 391
    return-void
.end method

.method public static writeBootProgressSystemRun(J)V
    .locals 1
    .param p0, "time"    # J

    .prologue
    .line 382
    const/16 v0, 0xbc2

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 383
    return-void
.end method

.method public static writeCacheFileDeleted(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 274
    const/16 v0, 0xabc

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 275
    return-void
.end method

.method public static writeConfigInstallFailed(Ljava/lang/String;)V
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 466
    const v0, 0xc864

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 467
    return-void
.end method

.method public static writeConnectivityStateChanged(III)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "subtype"    # I
    .param p2, "state"    # I

    .prologue
    .line 442
    const v0, 0xc364

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 443
    return-void
.end method

.method public static writeDockBatteryLevel(III)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "voltage"    # I
    .param p2, "temperature"    # I

    .prologue
    .line 230
    const/16 v0, 0xab2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 231
    return-void
.end method

.method public static writeDockBatteryStatus(IIIILjava/lang/String;)V
    .locals 4
    .param p0, "status"    # I
    .param p1, "health"    # I
    .param p2, "present"    # I
    .param p3, "plugged"    # I
    .param p4, "technology"    # Ljava/lang/String;

    .prologue
    .line 234
    const/16 v0, 0xab3

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 235
    return-void
.end method

.method public static writeFreeStorageChanged(J)V
    .locals 1
    .param p0, "data"    # J

    .prologue
    .line 262
    const/16 v0, 0xab8

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 263
    return-void
.end method

.method public static writeFreeStorageLeft(JJJ)V
    .locals 4
    .param p0, "data"    # J
    .param p2, "system"    # J
    .param p4, "cache"    # J

    .prologue
    .line 270
    const/16 v0, 0xaba

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 271
    return-void
.end method

.method public static writeFstrimFinish(J)V
    .locals 1
    .param p0, "time"    # J

    .prologue
    .line 486
    const/16 v0, 0xac4

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 487
    return-void
.end method

.method public static writeFstrimStart(J)V
    .locals 1
    .param p0, "time"    # J

    .prologue
    .line 482
    const/16 v0, 0xac3

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 483
    return-void
.end method

.method public static writeIdleMaintenanceWindowFinish(JJII)V
    .locals 4
    .param p0, "time"    # J
    .param p2, "lastuseractivity"    # J
    .param p4, "batterylevel"    # I
    .param p5, "batterycharging"    # I

    .prologue
    .line 478
    const/16 v0, 0xac2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 479
    return-void
.end method

.method public static writeIdleMaintenanceWindowStart(JJII)V
    .locals 4
    .param p0, "time"    # J
    .param p2, "lastuseractivity"    # J
    .param p4, "batterylevel"    # I
    .param p5, "batterycharging"    # I

    .prologue
    .line 474
    const/16 v0, 0xac1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 475
    return-void
.end method

.method public static writeIfwIntentMatched(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "intentType"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I
    .param p3, "callerPkgCount"    # I
    .param p4, "callerPkgs"    # Ljava/lang/String;
    .param p5, "action"    # Ljava/lang/String;
    .param p6, "mimeType"    # Ljava/lang/String;
    .param p7, "uri"    # Ljava/lang/String;
    .param p8, "flags"    # I

    .prologue
    .line 470
    const v0, 0xc8c8

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    const/16 v2, 0x8

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 471
    return-void
.end method

.method public static writeImfForceReconnectIme([Ljava/lang/Object;JI)V
    .locals 4
    .param p0, "ime"    # [Ljava/lang/Object;
    .param p1, "timeSinceConnect"    # J
    .param p3, "showing"    # I

    .prologue
    .line 438
    const/16 v0, 0x7d00

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 439
    return-void
.end method

.method public static writeLockdownVpnConnected(I)V
    .locals 1
    .param p0, "egressNet"    # I

    .prologue
    .line 458
    const v0, 0xc801

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 459
    return-void
.end method

.method public static writeLockdownVpnConnecting(I)V
    .locals 1
    .param p0, "egressNet"    # I

    .prologue
    .line 454
    const v0, 0xc800

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 455
    return-void
.end method

.method public static writeLockdownVpnError(I)V
    .locals 1
    .param p0, "egressNet"    # I

    .prologue
    .line 462
    const v0, 0xc802

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 463
    return-void
.end method

.method public static writeLowStorage(J)V
    .locals 1
    .param p0, "data"    # J

    .prologue
    .line 266
    const/16 v0, 0xab9

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 267
    return-void
.end method

.method public static writeNetstatsMobileSample(JJJJJJJJJJJJJ)V
    .locals 4
    .param p0, "devRxBytes"    # J
    .param p2, "devTxBytes"    # J
    .param p4, "devRxPkts"    # J
    .param p6, "devTxPkts"    # J
    .param p8, "xtRxBytes"    # J
    .param p10, "xtTxBytes"    # J
    .param p12, "xtRxPkts"    # J
    .param p14, "xtTxPkts"    # J
    .param p16, "uidRxBytes"    # J
    .param p18, "uidTxBytes"    # J
    .param p20, "uidRxPkts"    # J
    .param p22, "uidTxPkts"    # J
    .param p24, "trustedTime"    # J

    .prologue
    .line 446
    const v0, 0xc79c

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static/range {p20 .. p21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-static/range {p22 .. p23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static/range {p24 .. p25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 447
    return-void
.end method

.method public static writeNetstatsWifiSample(JJJJJJJJJJJJJ)V
    .locals 4
    .param p0, "devRxBytes"    # J
    .param p2, "devTxBytes"    # J
    .param p4, "devRxPkts"    # J
    .param p6, "devTxPkts"    # J
    .param p8, "xtRxBytes"    # J
    .param p10, "xtTxBytes"    # J
    .param p12, "xtRxPkts"    # J
    .param p14, "xtTxPkts"    # J
    .param p16, "uidRxBytes"    # J
    .param p18, "uidTxBytes"    # J
    .param p20, "uidRxPkts"    # J
    .param p22, "uidTxPkts"    # J
    .param p24, "trustedTime"    # J

    .prologue
    .line 450
    const v0, 0xc79d

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static/range {p20 .. p21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-static/range {p22 .. p23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static/range {p24 .. p25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 451
    return-void
.end method

.method public static writeNotificationCancel(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "requiredFlags"    # I
    .param p5, "forbiddenFlags"    # I

    .prologue
    .line 282
    const/16 v0, 0xabf

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 283
    return-void
.end method

.method public static writeNotificationCancelAll(Ljava/lang/String;III)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userid"    # I
    .param p2, "requiredFlags"    # I
    .param p3, "forbiddenFlags"    # I

    .prologue
    .line 286
    const/16 v0, 0xac0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 287
    return-void
.end method

.method public static writeNotificationEnqueue(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "notification"    # Ljava/lang/String;

    .prologue
    .line 278
    const/16 v0, 0xabe

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 279
    return-void
.end method

.method public static writePowerPartialWakeState(ILjava/lang/String;)V
    .locals 4
    .param p0, "releasedoracquired"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 258
    const/16 v0, 0xaa9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 259
    return-void
.end method

.method public static writePowerScreenBroadcastDone(IJI)V
    .locals 4
    .param p0, "on"    # I
    .param p1, "broadcastduration"    # J
    .param p3, "wakelockcount"    # I

    .prologue
    .line 246
    const/16 v0, 0xaa6

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 247
    return-void
.end method

.method public static writePowerScreenBroadcastSend(I)V
    .locals 1
    .param p0, "wakelockcount"    # I

    .prologue
    .line 242
    const/16 v0, 0xaa5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 243
    return-void
.end method

.method public static writePowerScreenBroadcastStop(II)V
    .locals 4
    .param p0, "which"    # I
    .param p1, "wakelockcount"    # I

    .prologue
    .line 250
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 251
    return-void
.end method

.method public static writePowerScreenState(IIJI)V
    .locals 4
    .param p0, "offoron"    # I
    .param p1, "becauseofuser"    # I
    .param p2, "totaltouchdowntime"    # J
    .param p4, "touchcycles"    # I

    .prologue
    .line 254
    const/16 v0, 0xaa8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 255
    return-void
.end method

.method public static writePowerSleepRequested(I)V
    .locals 1
    .param p0, "wakelockscleared"    # I

    .prologue
    .line 238
    const/16 v0, 0xaa4

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 239
    return-void
.end method

.method public static writeRestoreAgentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 370
    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 371
    return-void
.end method

.method public static writeRestorePackage(Ljava/lang/String;I)V
    .locals 4
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 374
    const/16 v0, 0xb11

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 375
    return-void
.end method

.method public static writeRestoreStart(Ljava/lang/String;J)V
    .locals 4
    .param p0, "transport"    # Ljava/lang/String;
    .param p1, "source"    # J

    .prologue
    .line 362
    const/16 v0, 0xb0e

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 363
    return-void
.end method

.method public static writeRestoreSuccess(II)V
    .locals 4
    .param p0, "packages"    # I
    .param p1, "time"    # I

    .prologue
    .line 378
    const/16 v0, 0xb12

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 379
    return-void
.end method

.method public static writeRestoreTransportFailure()V
    .locals 2

    .prologue
    .line 366
    const/16 v0, 0xb0f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 367
    return-void
.end method

.method public static writeUnknownSourcesEnabled(I)V
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 406
    const/16 v0, 0xc26

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 407
    return-void
.end method

.method public static writeWatchdog(Ljava/lang/String;)V
    .locals 1
    .param p0, "service"    # Ljava/lang/String;

    .prologue
    .line 290
    const/16 v0, 0xaf2

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 291
    return-void
.end method

.method public static writeWatchdogHardReset(Ljava/lang/String;III)V
    .locals 4
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "maxpss"    # I
    .param p3, "pss"    # I

    .prologue
    .line 302
    const/16 v0, 0xaf5

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 303
    return-void
.end method

.method public static writeWatchdogMeminfo(IIIIIIIIIII)V
    .locals 4
    .param p0, "memfree"    # I
    .param p1, "buffers"    # I
    .param p2, "cached"    # I
    .param p3, "active"    # I
    .param p4, "inactive"    # I
    .param p5, "anonpages"    # I
    .param p6, "mapped"    # I
    .param p7, "slab"    # I
    .param p8, "sreclaimable"    # I
    .param p9, "sunreclaim"    # I
    .param p10, "pagetables"    # I

    .prologue
    .line 318
    const/16 v0, 0xaf9

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 319
    return-void
.end method

.method public static writeWatchdogProcPss(Ljava/lang/String;II)V
    .locals 4
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "pss"    # I

    .prologue
    .line 294
    const/16 v0, 0xaf3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 295
    return-void
.end method

.method public static writeWatchdogProcStats(IIIII)V
    .locals 4
    .param p0, "deathsinone"    # I
    .param p1, "deathsintwo"    # I
    .param p2, "deathsinthree"    # I
    .param p3, "deathsinfour"    # I
    .param p4, "deathsinfive"    # I

    .prologue
    .line 310
    const/16 v0, 0xaf7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 311
    return-void
.end method

.method public static writeWatchdogPssStats(IIIIIIIIIII)V
    .locals 4
    .param p0, "emptypss"    # I
    .param p1, "emptycount"    # I
    .param p2, "backgroundpss"    # I
    .param p3, "backgroundcount"    # I
    .param p4, "servicepss"    # I
    .param p5, "servicecount"    # I
    .param p6, "visiblepss"    # I
    .param p7, "visiblecount"    # I
    .param p8, "foregroundpss"    # I
    .param p9, "foregroundcount"    # I
    .param p10, "nopsscount"    # I

    .prologue
    .line 306
    const/16 v0, 0xaf6

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 307
    return-void
.end method

.method public static writeWatchdogRequestedReboot(IIIIIII)V
    .locals 4
    .param p0, "nowait"    # I
    .param p1, "scheduleinterval"    # I
    .param p2, "recheckinterval"    # I
    .param p3, "starttime"    # I
    .param p4, "window"    # I
    .param p5, "minscreenoff"    # I
    .param p6, "minnextalarm"    # I

    .prologue
    .line 326
    const/16 v0, 0xafb

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 327
    return-void
.end method

.method public static writeWatchdogScheduledReboot(JIIILjava/lang/String;)V
    .locals 4
    .param p0, "now"    # J
    .param p2, "interval"    # I
    .param p3, "starttime"    # I
    .param p4, "window"    # I
    .param p5, "skip"    # Ljava/lang/String;

    .prologue
    .line 314
    const/16 v0, 0xaf8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 315
    return-void
.end method

.method public static writeWatchdogSoftReset(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 4
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "maxpss"    # I
    .param p3, "pss"    # I
    .param p4, "skip"    # Ljava/lang/String;

    .prologue
    .line 298
    const/16 v0, 0xaf4

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 299
    return-void
.end method

.method public static writeWatchdogVmstat(JIIIII)V
    .locals 4
    .param p0, "runtime"    # J
    .param p2, "pgfree"    # I
    .param p3, "pgactivate"    # I
    .param p4, "pgdeactivate"    # I
    .param p5, "pgfault"    # I
    .param p6, "pgmajfault"    # I

    .prologue
    .line 322
    const/16 v0, 0xafa

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 323
    return-void
.end method

.method public static writeWmHomeStackMoved(I)V
    .locals 1
    .param p0, "totop"    # I

    .prologue
    .line 430
    const/16 v0, 0x791d

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 431
    return-void
.end method

.method public static writeWmNoSurfaceMemory(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "window"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "operation"    # Ljava/lang/String;

    .prologue
    .line 410
    const/16 v0, 0x7918

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 411
    return-void
.end method

.method public static writeWmStackCreated(IIII)V
    .locals 4
    .param p0, "stackid"    # I
    .param p1, "relativeboxid"    # I
    .param p2, "position"    # I
    .param p3, "weight"    # I

    .prologue
    .line 426
    const/16 v0, 0x791c

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 427
    return-void
.end method

.method public static writeWmStackRemoved(I)V
    .locals 1
    .param p0, "stackid"    # I

    .prologue
    .line 434
    const/16 v0, 0x791e

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 435
    return-void
.end method

.method public static writeWmTaskCreated(II)V
    .locals 4
    .param p0, "taskid"    # I
    .param p1, "stackid"    # I

    .prologue
    .line 414
    const/16 v0, 0x7919

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 415
    return-void
.end method

.method public static writeWmTaskMoved(III)V
    .locals 4
    .param p0, "taskid"    # I
    .param p1, "totop"    # I
    .param p2, "index"    # I

    .prologue
    .line 418
    const/16 v0, 0x791a

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 419
    return-void
.end method

.method public static writeWmTaskRemoved(ILjava/lang/String;)V
    .locals 4
    .param p0, "taskid"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 422
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 423
    return-void
.end method
