.class public Lcom/android/vending/util/AlarmService;
.super Lcom/android/vending/compat/VendingService;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/util/AlarmService$AsynchAckNotifications;,
        Lcom/android/vending/util/AlarmService$AsynchCheckForNotifications;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/vending/compat/VendingService;-><init>()V

    .line 256
    return-void
.end method

.method public static cancelMarketAlarm(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    invoke-static {p0}, Lcom/android/vending/util/AlarmService;->createPendingIntentForMarketAlarm(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 189
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 190
    .local v1, "am":Landroid/app/AlarmManager;
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 191
    return-void
.end method

.method private static createPendingIntentForMarketAlarm(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    const-class v1, Lcom/android/vending/util/AlarmService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method private handleAlarm()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    new-instance v1, Lcom/android/vending/util/AlarmService$AsynchCheckForNotifications;

    invoke-direct {v1}, Lcom/android/vending/util/AlarmService$AsynchCheckForNotifications;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;)V

    .line 81
    invoke-static {p0}, Lcom/android/vending/util/AlarmService;->rescheduleMarketAlarm(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public static rescheduleMarketAlarm(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/vending/util/AlarmService$2;

    invoke-direct {v1, p0}, Lcom/android/vending/util/AlarmService$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 229
    return-void
.end method

.method private restartAlarmAfterBoot()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/vending/util/AlarmService$1;

    invoke-direct {v1, p0}, Lcom/android/vending/util/AlarmService$1;-><init>(Lcom/android/vending/util/AlarmService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void
.end method

.method public static setMarketAlarm(Landroid/content/Context;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # J

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 150
    .local v0, "startTime":J
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/vending/util/AlarmService;->setMarketAlarm(Landroid/content/Context;JJ)V

    .line 151
    sget-object v2, Lcom/android/vending/util/VendingPreferences;->MARKET_ALARM_START_TIME:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public static setMarketAlarm(Landroid/content/Context;JJ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # J
    .param p3, "startTime"    # J

    .prologue
    .line 175
    invoke-static {p0}, Lcom/android/vending/util/AlarmService;->createPendingIntentForMarketAlarm(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 176
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 177
    .local v3, "am":Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v1, v4, p1

    .line 178
    .local v1, "alarmTime":J
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 180
    sget-object v4, Lcom/android/vending/util/VendingPreferences;->MARKET_ALARM_TIMEOUT:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 181
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    .line 60
    if-nez p1, :cond_0

    move v1, v3

    .line 72
    :goto_0
    return v1

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.vending.billing.ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/android/vending/util/AlarmService;->handleAlarm()V

    :goto_1
    move v1, v3

    .line 72
    goto :goto_0

    .line 67
    :cond_1
    const-string v1, "com.android.vending.billing.RESTART_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/android/vending/util/AlarmService;->restartAlarmAfterBoot()V

    goto :goto_1

    .line 70
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
