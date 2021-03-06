.class Lcom/android/camera/network/download/DownloadTask$CoreTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/network/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoreTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mRequest:Lcom/android/camera/network/download/Request;

.field final synthetic this$0:Lcom/android/camera/network/download/DownloadTask;


# direct methods
.method static synthetic -get0(Lcom/android/camera/network/download/DownloadTask$CoreTask;)Lcom/android/camera/network/download/Request;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/network/download/DownloadTask$CoreTask;

    .prologue
    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->mRequest:Lcom/android/camera/network/download/Request;

    return-object v0
.end method

.method constructor <init>(Lcom/android/camera/network/download/DownloadTask;Lcom/android/camera/network/download/Request;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/network/download/DownloadTask;
    .param p2, "request"    # Lcom/android/camera/network/download/Request;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 349
    iput-object p2, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->mRequest:Lcom/android/camera/network/download/Request;

    .line 350
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    iget-object v1, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->mRequest:Lcom/android/camera/network/download/Request;

    invoke-static {v0, v1}, Lcom/android/camera/network/download/DownloadTask;->-wrap0(Lcom/android/camera/network/download/DownloadTask;Lcom/android/camera/network/download/Request;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 352
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "downloadResult"    # Ljava/lang/Integer;

    .prologue
    .line 374
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 375
    .local v0, "status":I
    :goto_0
    const-string/jumbo v1, "DownloadTask"

    const-string/jumbo v2, "process download finish %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-static {v1}, Lcom/android/camera/network/download/DownloadTask;->-get0(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-static {v1}, Lcom/android/camera/network/download/DownloadTask;->-get0(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->mRequest:Lcom/android/camera/network/download/Request;

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;->onRequestComplete(Lcom/android/camera/network/download/Request;I)V

    .line 379
    :cond_0
    return-void

    .line 374
    .end local v0    # "status":I
    :cond_1
    const/4 v0, -0x2

    .restart local v0    # "status":I
    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 372
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "downloadResult"    # Ljava/lang/Integer;

    .prologue
    .line 359
    const-string/jumbo v0, "DownloadTask"

    const-string/jumbo v1, "process download finish %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask;->-get0(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask;->-get0(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->mRequest:Lcom/android/camera/network/download/Request;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;->onRequestComplete(Lcom/android/camera/network/download/Request;I)V

    .line 363
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 357
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask;->-get1(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask;->-get1(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->mRequest:Lcom/android/camera/network/download/Request;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/network/download/DownloadTask$OnProgressListener;->onProgressUpdate(Lcom/android/camera/network/download/Request;I)V

    .line 370
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 365
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method publishProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 382
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 383
    return-void
.end method
