.class public Lcom/android/camera/camera_adapter/CameraMTK$FBParams;
.super Ljava/lang/Object;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FBParams"
.end annotation


# instance fields
.field public enlargeEye:I

.field public skinColor:I

.field public slimFace:I

.field public smoothLevel:I

.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/camera_adapter/CameraMTK;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V
    .locals 1
    .param p1, "other"    # Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .prologue
    .line 576
    if-nez p1, :cond_0

    .line 577
    return-void

    .line 579
    :cond_0
    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    .line 580
    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    .line 581
    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    .line 582
    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    .line 583
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 587
    if-ne p0, p1, :cond_0

    return v4

    .line 588
    :cond_0
    instance-of v1, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    .line 590
    check-cast v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .line 592
    .local v0, "fbParams":Lcom/android/camera/camera_adapter/CameraMTK$FBParams;
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    iget v2, v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    if-eq v1, v2, :cond_2

    return v3

    .line 593
    :cond_2
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    iget v2, v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    if-eq v1, v2, :cond_3

    return v3

    .line 594
    :cond_3
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    iget v2, v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    if-eq v1, v2, :cond_4

    return v3

    .line 595
    :cond_4
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    iget v2, v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    if-eq v1, v2, :cond_5

    return v3

    .line 597
    :cond_5
    return v4
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 602
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    .line 603
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    add-int v0, v1, v2

    .line 604
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    add-int v0, v1, v2

    .line 605
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    add-int v0, v1, v2

    .line 606
    return v0
.end method
