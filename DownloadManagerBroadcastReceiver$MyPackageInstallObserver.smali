.class Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "DownloadManagerBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/DownloadManagerBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPackageInstallObserver"
.end annotation


# instance fields
.field private final mAsset:Lcom/android/vending/model/LocalAsset;

.field private final mAssetName:Ljava/lang/String;

.field private final mContentUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadSource:Ljava/lang/String;

.field private final mFileUri:Landroid/net/Uri;

.field private final mIsUpdate:Z

.field private final mLastInstallInSeries:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/android/vending/model/LocalAsset;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "asset"    # Lcom/android/vending/model/LocalAsset;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "assetName"    # Ljava/lang/String;
    .param p6, "lastInstallInSeries"    # Z
    .param p7, "downloadSource"    # Ljava/lang/String;
    .param p8, "isUpdate"    # Z

    .prologue
    .line 360
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContentUri:Landroid/net/Uri;

    .line 362
    iput-object p2, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mFileUri:Landroid/net/Uri;

    .line 363
    iput-object p3, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAsset:Lcom/android/vending/model/LocalAsset;

    .line 364
    iput-object p4, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    .line 365
    iput-object p5, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAssetName:Ljava/lang/String;

    .line 366
    iput-boolean p6, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mLastInstallInSeries:Z

    .line 367
    iput-object p7, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mDownloadSource:Ljava/lang/String;

    .line 368
    iput-boolean p8, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mIsUpdate:Z

    .line 369
    return-void
.end method

.method private maybeBroadcastInstallReferrer(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 427
    iget-object v7, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAsset:Lcom/android/vending/model/LocalAsset;

    invoke-virtual {v7}, Lcom/android/vending/model/LocalAsset;->getReferrer()Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, "referrer":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.vending.INSTALL_REFERRER"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "referrer"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    iget-object v7, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 434
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 436
    .local v6, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 437
    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 438
    .local v0, "activityName":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 439
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 440
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    .line 441
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 442
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 448
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-eqz v0, :cond_2

    .line 449
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    iget-object v7, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method protected installFailureToString(I)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 458
    sparse-switch p1, :sswitch_data_0

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "reason":Ljava/lang/String;
    const/4 v0, -0x1

    .line 554
    .local v0, "errorMsgId":I
    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 460
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_0
    const-string v1, "Already exists"

    .line 461
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f060062

    .line 462
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 464
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_1
    const-string v1, "Invalid APK"

    .line 465
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f060063

    .line 466
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 468
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_2
    const-string v1, "Insufficient storage"

    .line 469
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f060064

    .line 470
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 472
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_3
    const-string v1, "Duplicate package"

    .line 473
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f060062

    .line 474
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 476
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_4
    const-string v1, "Update incompatible"

    .line 477
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f060065

    .line 478
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 480
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_5
    const-string v1, "Missing shared library"

    .line 481
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f060066

    .line 482
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 484
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_6
    const-string v1, "Replace couldn\'t delete"

    .line 485
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f060067

    .line 486
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 488
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_7
    const-string v1, "Failed dexopt"

    .line 489
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f060063

    .line 490
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 492
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_8
    const-string v1, "Older SDK"

    .line 493
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f060068

    .line 494
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 496
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_9
    const-string v1, "Conflicting provider"

    .line 497
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f060069

    .line 498
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 500
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_a
    const-string v1, "Newer SDK"

    .line 501
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f06006a

    .line 502
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 504
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_b
    const-string v1, "CPU ABI incompatible"

    .line 505
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f06006b

    .line 506
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 508
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_c
    const-string v1, "Parse not APK"

    .line 509
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f060063

    .line 510
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 512
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_d
    const-string v1, "Parse bad manifest"

    .line 513
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f06006c

    .line 514
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 516
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_e
    const-string v1, "Parse no certificates"

    .line 517
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f06006d

    .line 518
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 520
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_f
    const-string v1, "Parse inconsistent certificates"

    .line 521
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f06006d

    .line 522
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 524
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_10
    const-string v1, "Parse certificate encoding"

    .line 525
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f06006d

    .line 526
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 528
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_11
    const-string v1, "Parse bad package name"

    .line 529
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f06006e

    .line 530
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 532
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_12
    const-string v1, "Parse bad shared user id"

    .line 533
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f060063

    .line 534
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 536
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_13
    const-string v1, "Parse manifest malformed"

    .line 537
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f06006c

    .line 538
    .restart local v0    # "errorMsgId":I
    goto :goto_0

    .line 540
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_14
    const-string v1, "Parse manifest empty"

    .line 541
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f06006c

    .line 542
    .restart local v0    # "errorMsgId":I
    goto/16 :goto_0

    .line 545
    .end local v0    # "errorMsgId":I
    .end local v1    # "reason":Ljava/lang/String;
    :sswitch_15
    const-string v1, "Invalid install location"

    .line 546
    .restart local v1    # "reason":Ljava/lang/String;
    const v0, 0x7f06006f

    .line 547
    .restart local v0    # "errorMsgId":I
    goto/16 :goto_0

    :cond_0
    move-object v2, v1

    .line 554
    goto/16 :goto_1

    .line 458
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d -> :sswitch_14
        -0x6c -> :sswitch_13
        -0x6b -> :sswitch_12
        -0x6a -> :sswitch_11
        -0x69 -> :sswitch_10
        -0x68 -> :sswitch_f
        -0x67 -> :sswitch_e
        -0x65 -> :sswitch_d
        -0x64 -> :sswitch_c
        -0x14 -> :sswitch_15
        -0x13 -> :sswitch_15
        -0x10 -> :sswitch_b
        -0xe -> :sswitch_a
        -0xd -> :sswitch_9
        -0xc -> :sswitch_8
        -0xb -> :sswitch_7
        -0xa -> :sswitch_6
        -0x9 -> :sswitch_5
        -0x7 -> :sswitch_4
        -0x5 -> :sswitch_3
        -0x4 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 372
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v2

    .line 374
    .local v2, "notificationMgr":Lcom/android/vending/VendingNotificationManager;
    const/4 v3, 0x1

    move/from16 v0, p2

    move v1, v3

    if-eq v0, v1, :cond_2

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAsset:Lcom/android/vending/model/LocalAsset;

    move-object v3, v0

    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v3, v4}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mIsUpdate:Z

    move v4, v0

    if-eqz v4, :cond_0

    const v4, 0x7f06004a

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAssetName:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "notificationStatus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mIsUpdate:Z

    move v5, v0

    if-eqz v5, :cond_1

    const v5, 0x7f06004b

    :goto_1
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, "notificationMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v5, 0x7f060076

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 385
    .local v7, "dialogTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->installFailureToString(I)Ljava/lang/String;

    move-result-object v8

    .line 387
    .local v8, "detailedMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAsset:Lcom/android/vending/model/LocalAsset;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAssetName:Ljava/lang/String;

    move-object v5, v0

    const-string v9, "installationFailed"

    invoke-virtual/range {v2 .. v9}, Lcom/android/vending/VendingNotificationManager;->showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package install from "

    .end local v4    # "notificationStatus":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContentUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mLastInstallInSeries:Z

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mDownloadSource:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Lcom/android/vending/AssetDownloader;->finishRestore(Landroid/content/Context;ZLjava/lang/String;)V

    .line 423
    .end local v6    # "notificationMsg":Ljava/lang/String;
    .end local v7    # "dialogTitle":Ljava/lang/String;
    .end local v8    # "detailedMessage":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContentUri:Landroid/net/Uri;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mFileUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Lcom/android/vending/util/DownloadManagerUtil;->removeDownload(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 424
    return-void

    .line 376
    :cond_0
    const v4, 0x7f060048

    goto/16 :goto_0

    .line 380
    .restart local v4    # "notificationStatus":Ljava/lang/String;
    :cond_1
    const v5, 0x7f060049

    goto :goto_1

    .line 400
    .end local v4    # "notificationStatus":Ljava/lang/String;
    :cond_2
    const-string v3, "Package \'%s\' installed!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    invoke-direct/range {p0 .. p1}, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->maybeBroadcastInstallReferrer(Ljava/lang/String;)V

    .line 403
    const-string v3, "Source=%s last=%B asset=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mDownloadSource:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mLastInstallInSeries:Z

    move v6, v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAsset:Lcom/android/vending/model/LocalAsset;

    move-object v6, v0

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    const-string v3, "backup"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mDownloadSource:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mLastInstallInSeries:Z

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mDownloadSource:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Lcom/android/vending/AssetDownloader;->finishRestore(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_2

    .line 409
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mIsUpdate:Z

    move v4, v0

    if-eqz v4, :cond_4

    const v4, 0x7f060046

    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAssetName:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 413
    .restart local v4    # "notificationStatus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mIsUpdate:Z

    move v5, v0

    if-eqz v5, :cond_5

    const v5, 0x7f060047

    :goto_4
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 416
    .restart local v6    # "notificationMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 418
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mContext:Landroid/content/Context;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAsset:Lcom/android/vending/model/LocalAsset;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/DownloadManagerBroadcastReceiver$MyPackageInstallObserver;->mAssetName:Ljava/lang/String;

    move-object v14, v0

    const v16, 0x7f020078

    move-object v9, v2

    move-object v13, v4

    move-object v15, v6

    invoke-virtual/range {v9 .. v16}, Lcom/android/vending/VendingNotificationManager;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 409
    .end local v4    # "notificationStatus":Ljava/lang/String;
    .end local v6    # "notificationMsg":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_4
    const v4, 0x7f060044

    goto :goto_3

    .line 413
    .restart local v4    # "notificationStatus":Ljava/lang/String;
    :cond_5
    const v5, 0x7f060045

    goto :goto_4
.end method
