.class Lcom/android/vending/AssetInfoActivity$PermissionsSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionsSection"
.end annotation


# instance fields
.field private mContainer:Landroid/widget/FrameLayout;

.field private mOpenHeight:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 1

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    .line 1443
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mOpenHeight:I

    .line 1446
    invoke-virtual {p1}, Lcom/android/vending/AssetInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1447
    return-void
.end method

.method static synthetic access$2900(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    .prologue
    .line 1440
    iget v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mOpenHeight:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/vending/AssetInfoActivity$PermissionsSection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$PermissionsSection;
    .param p1, "x1"    # I

    .prologue
    .line 1440
    iput p1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mOpenHeight:I

    return p1
.end method

.method static synthetic access$3000(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/vending/AssetInfoActivity$PermissionsSection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$PermissionsSection;
    .param p1, "x1"    # I

    .prologue
    .line 1440
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->maybeSetCarouselBackground(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    .prologue
    .line 1440
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->getOpenContainerHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$3901(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    .prologue
    .line 1440
    invoke-super {p0}, Lcom/android/vending/AssetInfoActivity$Section;->deactivate()V

    return-void
.end method

.method private getOpenContainerHeight()I
    .locals 3

    .prologue
    .line 1558
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v1}, Lcom/android/vending/AssetInfoActivity;->access$3400(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 1560
    .local v0, "availableScreenHeight":I
    iget v1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mOpenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getPermissionGroupLabels(Ljava/util/Collection;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1636
    .local p1, "groupNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1637
    .local v2, "groupToLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1638
    .local v1, "groupName":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1640
    :try_start_0
    iget-object v6, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    .line 1642
    .local v5, "permissionGroupInfo":Landroid/content/pm/PermissionGroupInfo;
    iget-object v6, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1644
    .local v4, "label":Ljava/lang/String;
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1645
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "permissionGroupInfo":Landroid/content/pm/PermissionGroupInfo;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 1646
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid group name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 1650
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "groupName":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private groupPermissions(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1655
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1657
    .local v1, "groupedPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0    # "this":Lcom/android/vending/AssetInfoActivity$PermissionsSection;
    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 1658
    .local v3, "p":Landroid/content/pm/PermissionInfo;
    iget-object v0, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 1659
    .local v0, "group":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1660
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1664
    .end local v0    # "group":Ljava/lang/String;
    .end local v3    # "p":Landroid/content/pm/PermissionInfo;
    :cond_1
    return-object v1
.end method

.method private makePermissionsString()Ljava/lang/CharSequence;
    .locals 25

    .prologue
    .line 1579
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/vending/model/Asset;->loadPermissionInfos(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1581
    .local v17, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1582
    .local v18, "permissionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PermissionInfo;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1583
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PermissionInfo;

    .line 1584
    .local v15, "permission":Landroid/content/pm/PermissionInfo;
    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 1585
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1589
    .end local v15    # "permission":Landroid/content/pm/PermissionInfo;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->groupPermissions(Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    .line 1590
    .local v8, "groupedPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->getPermissionGroupLabels(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v16

    .line 1593
    .local v16, "permissionGroupLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 1594
    .local v14, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1595
    .local v7, "groupName":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1596
    .local v6, "groupLabel":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 1597
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1598
    .local v5, "descriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 1599
    .local v11, "isFirst":Z
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "groupName":Ljava/lang/String;
    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PermissionInfo;

    .line 1600
    .restart local v15    # "permission":Landroid/content/pm/PermissionInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1601
    .local v13, "labelChars":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 1605
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1606
    .local v12, "label":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 1607
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object v0, v12

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    move-object v0, v12

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1609
    :cond_4
    const/4 v11, 0x0

    .line 1610
    invoke-static {v12}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1612
    .end local v12    # "label":Ljava/lang/String;
    .end local v13    # "labelChars":Ljava/lang/CharSequence;
    .end local v15    # "permission":Landroid/content/pm/PermissionInfo;
    :cond_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<b>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "</b><br>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1618
    .end local v5    # "descriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "groupLabel":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "isFirst":Z
    :cond_6
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1619
    const/16 v22, 0x0

    .line 1632
    :goto_3
    return-object v22

    .line 1622
    :cond_7
    new-instance v21, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1623
    .local v21, "text":Landroid/text/SpannableStringBuilder;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    .line 1624
    .local v12, "label":Ljava/lang/CharSequence;
    invoke-virtual/range {v21 .. v21}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v20

    .line 1625
    .local v20, "sizeStart":I
    const-string v22, "\n\n"

    invoke-virtual/range {v21 .. v22}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1626
    invoke-virtual/range {v21 .. v21}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v19

    .line 1627
    .local v19, "sizeEnd":I
    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1628
    new-instance v22, Landroid/text/style/RelativeSizeSpan;

    const/high16 v23, 0x3f000000    # 0.5f

    invoke-direct/range {v22 .. v23}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v23, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .end local v12    # "label":Ljava/lang/CharSequence;
    .end local v19    # "sizeEnd":I
    .end local v20    # "sizeStart":I
    :cond_8
    move-object/from16 v22, v21

    .line 1632
    goto :goto_3
.end method

.method private maybeSetCarouselBackground(I)V
    .locals 4
    .param p1, "backgroundColor"    # I

    .prologue
    .line 1567
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const v3, 0x7f07003f

    invoke-virtual {v2, v3}, Lcom/android/vending/AssetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1568
    .local v1, "assetSnippet":Landroid/view/View;
    instance-of v2, v1, Lcom/android/vending/velvet/PortraitCarouselView;

    if-eqz v2, :cond_0

    .line 1569
    move-object v0, v1

    check-cast v0, Lcom/android/vending/velvet/CarouselView;

    move-object v2, v0

    invoke-virtual {v2, p1}, Lcom/android/vending/velvet/CarouselView;->setBackgroundColor(I)V

    .line 1570
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 1572
    :cond_0
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1513
    invoke-super {p0}, Lcom/android/vending/AssetInfoActivity$Section;->activate()V

    .line 1514
    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v3}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->maybeSetCarouselBackground(I)V

    .line 1517
    new-array v3, v8, [I

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v4}, Lcom/android/vending/AssetInfoActivity;->access$3400(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    aput v4, v3, v6

    aput v6, v3, v7

    invoke-static {v3}, Lcom/android/vending/compat/animation/ValueAnimator;->ofInt([I)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v2

    .line 1518
    .local v2, "scrollAnimator":Lcom/android/vending/compat/animation/ValueAnimator;
    new-instance v3, Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v5}, Lcom/android/vending/AssetInfoActivity;->access$3400(Lcom/android/vending/AssetInfoActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-direct {v3, v4, v5, v9}, Lcom/android/vending/AssetInfoActivity$VerticalScrollAnimator;-><init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;Lcom/android/vending/AssetInfoActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/android/vending/compat/animation/ValueAnimator;->addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1519
    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/android/vending/compat/animation/ValueAnimator;->setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;

    .line 1521
    new-array v3, v8, [I

    aput v6, v3, v6

    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->getOpenContainerHeight()I

    move-result v4

    aput v4, v3, v7

    invoke-static {v3}, Lcom/android/vending/compat/animation/ValueAnimator;->ofInt([I)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v1

    .line 1523
    .local v1, "heightAnimator":Lcom/android/vending/compat/animation/ValueAnimator;
    new-instance v3, Lcom/android/vending/AssetInfoActivity$HeightAnimator;

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    invoke-direct {v3, v4, v5, v9}, Lcom/android/vending/AssetInfoActivity$HeightAnimator;-><init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;Lcom/android/vending/AssetInfoActivity$1;)V

    invoke-virtual {v1, v3}, Lcom/android/vending/compat/animation/ValueAnimator;->addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1524
    new-instance v3, Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;

    invoke-direct {v3, p0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection$2;-><init>(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)V

    invoke-virtual {v1, v3}, Lcom/android/vending/compat/animation/ValueAnimator;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 1535
    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Lcom/android/vending/compat/animation/ValueAnimator;->setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;

    .line 1537
    new-instance v0, Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/AnimatorSet;-><init>()V

    .line 1538
    .local v0, "animatorSet":Lcom/android/vending/compat/animation/AnimatorSet;
    new-array v3, v8, [Lcom/android/vending/compat/animation/Animator;

    aput-object v2, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v3}, Lcom/android/vending/compat/animation/AnimatorSet;->playTogether([Lcom/android/vending/compat/animation/Animator;)V

    .line 1539
    invoke-virtual {v0}, Lcom/android/vending/compat/animation/AnimatorSet;->start()V

    .line 1540
    return-void
.end method

.method public deactivate()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1544
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Lcom/android/vending/compat/animation/ValueAnimator;->ofInt([I)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v0

    .line 1545
    .local v0, "heightAnimator":Lcom/android/vending/compat/animation/ValueAnimator;
    new-instance v1, Lcom/android/vending/AssetInfoActivity$HeightAnimator;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/vending/AssetInfoActivity$HeightAnimator;-><init>(Lcom/android/vending/AssetInfoActivity;Landroid/view/View;Lcom/android/vending/AssetInfoActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/compat/animation/ValueAnimator;->addUpdateListener(Lcom/android/vending/compat/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1546
    new-instance v1, Lcom/android/vending/AssetInfoActivity$PermissionsSection$3;

    invoke-direct {v1, p0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection$3;-><init>(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/compat/animation/ValueAnimator;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 1553
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/compat/animation/ValueAnimator;->setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;

    .line 1554
    invoke-virtual {v0}, Lcom/android/vending/compat/animation/ValueAnimator;->start()V

    .line 1555
    return-void
.end method

.method protected onAttach()V
    .locals 1

    .prologue
    .line 1451
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    .line 1452
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->addView(Landroid/view/View;)V

    .line 1453
    return-void
.end method

.method public onRefresh()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1463
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v2, :cond_0

    .line 1509
    :goto_0
    return-void

    .line 1467
    :cond_0
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f070044

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1470
    .local v1, "permissionsListView":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->makePermissionsString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1471
    .local v0, "permissionString":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 1472
    const v2, 0x7f0601a8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1473
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f070043

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1474
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f070045

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1481
    :goto_1
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1482
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;

    invoke-direct {v3, p0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;-><init>(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 1476
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1478
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/android/vending/AssetInfoActivity;->setViewOnClickListener(Landroid/view/View;)V

    goto :goto_1
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->onRefresh()V

    .line 1459
    return-void
.end method
