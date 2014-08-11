.class public final Lcom/android/settings/bluetooth/DevicePickerFragment;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private mCallFromHeadset:Z

.field private mFilterType:I

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mScan:Landroid/view/MenuItem;

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method private updateOptionsMenu()V
    .locals 4

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 176
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 177
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 178
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_2

    const v0, 0x7f020096

    .line 179
    .local v0, iconId:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 178
    .end local v0           #iconId:I
    :cond_2
    const v0, 0x7f020094

    goto :goto_1

    .line 181
    .end local v1           #isDiscovering:Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 182
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    const v2, 0x7f070023

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 71
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    .line 73
    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 76
    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-ne v2, v6, :cond_3

    .line 78
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    .line 84
    :goto_1
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 85
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    .line 90
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 92
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090995

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    .line 103
    :cond_1
    :goto_2
    return-void

    .line 67
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_2
    const v2, 0x7f070024

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 80
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    goto :goto_1

    .line 96
    .restart local v1       #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_4
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v6, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090996

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_2
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 230
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->updateOptionsMenu()V

    .line 127
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900a3

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    const-string v3, "DevicePickerFragment"

    const-string v4, "onCreateOptionsMenu :: do not creat option menu on Tablet!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 137
    .local v0, bluetoothIsEnabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 139
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_2

    const v2, 0x7f090591

    .line 141
    .local v2, textId:I
    :goto_2
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    .line 143
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->updateOptionsMenu()V

    goto :goto_0

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_1
    move v0, v4

    .line 136
    goto :goto_1

    .line 139
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_2
    const v2, 0x7f09008b

    goto :goto_2
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 215
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 217
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-nez v1, :cond_0

    .line 219
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    .line 224
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .parameter "btPreference"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClickForHeadset(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 211
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_2

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0

    .line 208
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    const-string v0, "DevicePickerFragment"

    const-string v1, "onOptionsItemSelected :: startScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->startScanning()V

    .line 162
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    const-string v0, "DevicePickerFragment"

    const-string v1, "onOptionsItemSelected :: stopScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;II)V
    .locals 2
    .parameter "profile"
    .parameter "newState"
    .parameter "oldState"

    .prologue
    const/4 v1, 0x2

    .line 247
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;II)V

    .line 248
    instance-of v0, p1, Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_1

    .line 249
    if-ne p2, v1, :cond_0

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    instance-of v0, p1, Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 254
    if-ne p2, v1, :cond_0

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 121
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 242
    return-void
.end method

.method public startScanning()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 190
    return-void
.end method
