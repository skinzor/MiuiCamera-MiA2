.class Lcom/android/camera/module/CameraModule$5;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->startAiLens()V
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
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$5;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1297
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "start ai lens"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1300
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.media.action.XIAOAI_CONTROL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    const-string/jumbo v2, "com.xiaomi.lens"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    const-string/jumbo v2, "preview_width"

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$5;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get19(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1303
    const-string/jumbo v2, "preview_height"

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$5;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get18(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1304
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$5;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 1305
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$5;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const v3, 0x7f050004

    const v4, 0x7f050005

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/Camera;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1306
    :catch_0
    move-exception v0

    .line 1307
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onClick: occur a exception"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
