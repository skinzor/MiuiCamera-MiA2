.class Lcom/android/camera/module/CameraModule$12;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->consumeAiSceneResult(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$12;->this$0:Lcom/android/camera/module/CameraModule;

    .line 6784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/android/camera/ui/ToggleSwitch;Z)V
    .locals 3
    .param p1, "s"    # Lcom/android/camera/ui/ToggleSwitch;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v2, 0x18

    .line 6787
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$12;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$12;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isAlive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 6788
    :cond_0
    return-void

    .line 6790
    :cond_1
    if-eqz p2, :cond_2

    .line 6791
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$12;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$12;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->-wrap32(Lcom/android/camera/module/CameraModule;II)V

    .line 6792
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$12;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v2}, Lcom/android/camera/module/CameraModule;->-wrap25(Lcom/android/camera/module/CameraModule;I)V

    .line 6793
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$12;->this$0:Lcom/android/camera/module/CameraModule;

    const-string/jumbo v1, "off"

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->-wrap35(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)V

    .line 6798
    :goto_0
    return-void

    .line 6796
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$12;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap12(Lcom/android/camera/module/CameraModule;)V

    goto :goto_0
.end method
