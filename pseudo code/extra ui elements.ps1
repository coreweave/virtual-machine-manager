Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(515,850)
$Form.text                       = "Virtual Machine Editor"
$Form.TopMost                    = $false
$Form.StartPosition = 'CenterScreen'
$form.AutoScaleMode = 'Font'
$Form.AutoSizeMode = "GrowAndShrink"
$Form.MaximumSize = $Form.ClientSize
$Form.MinimumSize = $Form.ClientSize
$Form.MaximizeBox = $false
$iconBase64      = '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' 
$iconBytes       = [Convert]::FromBase64String($iconBase64)
$stream  = New-Object IO.MemoryStream($iconBytes, 0, $iconBytes.Length)
$stream.Write($iconBytes, 0, $iconBytes.Length);
$iconImage       = [System.Drawing.Image]::FromStream($stream, $true)
$Form.Icon       = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())


$Groupbox1                       = New-Object system.Windows.Forms.Groupbox
$Groupbox1.height                = 20
$Groupbox1.width                 = 344
$Groupbox1.text                  = "Reigon"
$Groupbox1.location              = New-Object System.Drawing.Point(8,5)
$Groupbox1.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10) 
$Groupbox1.Anchor = 'Top,Left'
$Groupbox1.AutoSize = 'GrowAndShrink'

$ComboBox1                       = New-Object system.Windows.Forms.ComboBox
$ComboBox1.width                 = 250
$ComboBox1.height                = 10
$ComboBox1.location              = New-Object System.Drawing.Point(5,0)
$ComboBox1.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ComboBox1.Anchor = 'Left'
$ComboBox1.AutoSize = $true
$Options.Reigon| ForEach-Object {[void] $comboBox1.Items.Add($_)}
$comboBox1.text                  = "Reigon"
$combobox1.DropDownStyle         = 'DropDownList'

$Groupbox1.controls.AddRange(@($ComboBox1))

$Groupbox2                       = New-Object system.Windows.Forms.Groupbox
$Groupbox2.height                = 20
$Groupbox2.width                 = 344
$Groupbox2.text                  = "Operating System Image"
$Groupbox2.location              = New-Object System.Drawing.Point(8,80)
$Groupbox2.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10) 
$Groupbox2.Anchor = 'Top,Left'
$Groupbox2.AutoSize = 'GrowAndShrink'

$ComboBox2                       = New-Object system.Windows.Forms.ComboBox
$ComboBox2.width                 = 250
$ComboBox2.height                = 10
$ComboBox2.location              = New-Object System.Drawing.Point(5,0)
$ComboBox2.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ComboBox2.Anchor = 'Left'
$ComboBox2.AutoSize = $true
$Options.OS.Replace('External Source','Custom Source')| ForEach-Object {[void] $comboBox2.Items.Add($_)}
$comboBox2.text                  = "Operating System"
$combobox2.DropDownStyle         = 'DropDownList'
$Combobox2.Add_SelectedValueChanged(
    {
        if($ComboBox2.SelectedItem -like 'Win*')
            {
                $CheckBox3.Enabled = $true
                $CheckBox3.Refresh()
            }

        Else
            {
                $CheckBox3.Enabled = $false
                $CheckBox3.Refresh()
            }

        if($ComboBox2.SelectedItem -eq 'Custom Source')
            {
                #just kill me bro
            }
    })

$Groupbox2.controls.AddRange(@($ComboBox2))

$Groupbox3                       = New-Object system.Windows.Forms.Groupbox
$Groupbox3.height                = 100
$Groupbox3.width                 = 344
$Groupbox3.text                  = "Hardware"
$Groupbox3.location              = New-Object System.Drawing.Point(8,160)
$Groupbox3.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$groupbox3.Anchor = 'Top,Left' 
$Groupbox3.AutoSize = 'GrowAndShrink'

$ComboBox3                       = New-Object system.Windows.Forms.ComboBox
$ComboBox3.width                 = 250
$ComboBox3.height                = 10
$ComboBox3.location              = New-Object System.Drawing.Point(5,50)
$ComboBox3.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ComboBox3.Anchor = 'Left'
$ComboBox3.AutoSize = $true
$comboBox3.text                  = "Hardware"
$combobox3.DropDownStyle         = 'DropDownList'

$RadioButton1                    = New-Object system.Windows.Forms.RadioButton
$RadioButton1.text               = "CPU Instance"
$RadioButton1.AutoSize           = $true
$RadioButton1.width              = 104
$RadioButton1.height             = 20
$RadioButton1.location           = New-Object System.Drawing.Point(5,20)
$RadioButton1.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$RadioButton1.Anchor = 'Top,Left'
$RadioButton1.AutoSize = 'GrowAndShrink'
$RadioButton1.Add_CheckedChanged(
    {
        if($RadioButton1.Checked -eq $true)
            {
                $Combobox3.Items.Clear()
                $Options.CPUInstance| ForEach-Object {[void] $comboBox3.Items.Add($_)}
                $Label1.Enabled = $false
                $NumericUpDown1.Enabled = $false
                $NumericUpDown1.Refresh()
                $Combobox3.Refresh()
                $Label1.Refresh()
                
            }
    
    })

$RadioButton2                    = New-Object system.Windows.Forms.RadioButton
$RadioButton2.text               = "GPU Instance"
$RadioButton2.AutoSize           = $true
$RadioButton2.width              = 104
$RadioButton2.height             = 20
$RadioButton2.location           = New-Object System.Drawing.Point(130,20)
$RadioButton2.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$RadioButton2.Anchor = 'Top,Left'
$RadioButton2.AutoSize = 'GrowAndShrink'
$RadioButton2.Add_CheckedChanged(
    {
        if($RadioButton2.Checked -eq $true)
            {
                $Combobox3.Items.Clear()
                $Options.GPUInstance| ForEach-Object {[void] $comboBox3.Items.Add($_)}
                $Label1.Enabled = $true
                $NumericUpDown1.Enabled = $true
                $Combobox3.Refresh()
                $Label1.Refresh()
                $NumericUpDown1.Refresh()
            }
    })

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "GPU Count"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(265,21)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$NumericUpDown1 = New-Object 'System.Windows.Forms.NumericUpDown'
$NumericUpDown1.Minimum = 1
$NumericUpDown1.Maximum = 7
$NumericUpDown1.height                = 50
$NumericUpDown1.width                 = 50
$NumericUpDown1.location              = New-Object System.Drawing.Point(265,50)
$NumericUpDown1.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$NumericUpDown1.Anchor = 'Top,Left'
$NumericUpDown1.AutoSize = 'GrowAndShrink'

$RadioButton1.Checked = $true

$Groupbox3.controls.AddRange(@($RadioButton1,$RadioButton2,$ComboBox3,$Label1,$NumericUpDown1))

$Groupbox4                       = New-Object system.Windows.Forms.Groupbox
$Groupbox4.height                = 50
$Groupbox4.width                 = 344
$Groupbox4.text                  = "Root Storage (Gi) "
$Groupbox4.location              = New-Object System.Drawing.Point(8,270)
$Groupbox4.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Groupbox4.Anchor = 'Top,Left'
$Groupbox4.AutoSize = 'GrowAndShrink'

$NumericUpDown2 = New-Object 'System.Windows.Forms.NumericUpDown'
$NumericUpDown2.Minimum = $Options.Storage
$NumericUpDown2.height                = 50
$NumericUpDown2.width                 = 50
$NumericUpDown2.location              = New-Object System.Drawing.Point(5,25)
$NumericUpDown2.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$NumericUpDown2.Anchor = 'Top,Left'
$NumericUpDown2.AutoSize = 'GrowAndShrink'

$Groupbox4.Controls.AddRange(@($NumericUpDown2))

$Groupbox5                       = New-Object system.Windows.Forms.Groupbox
$Groupbox5.height                = 75
$Groupbox5.width                 = 344
$Groupbox5.text                  = "Shared Filesystem"
$Groupbox5.location              = New-Object System.Drawing.Point(8,350)
$Groupbox5.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Groupbox5.Anchor = 'Top,Left'
$Groupbox5.AutoSize = 'GrowAndShrink'

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 250
$TextBox1.height                 = 25
$TextBox1.location               = New-Object System.Drawing.Point(5,45)
$TextBox1.Font                   = 'Microsoft Sans Serif,10'
$TextBox1.Autosize               = $false

$CheckBox1                       = New-Object system.Windows.Forms.CheckBox
$CheckBox1.text                  = "Enabled"
$CheckBox1.AutoSize              = $false
$CheckBox1.width                 = 100
$CheckBox1.height                = 20
$CheckBox1.location              = New-Object System.Drawing.Point(5,20)
$CheckBox1.Font                  = 'Microsoft Sans Serif,10'
$CheckBox1.CheckState = 'Checked'
$CheckBox1.Add_CheckStateChanged(
    {
        if($CheckBox1.CheckState -eq 'Checked')
            {
                $TextBox1.Clear()
                $TextBox1.Enabled = $true
                $TextBox1.Refresh()
            }

        if($CheckBox1.CheckState -eq 'UnChecked')
            {
                $TextBox1.Clear()
                $TextBox1.Text = 'PVC Name'
                $TextBox1.Enabled = $false
                $TextBox1.Refresh()
            }
    })
$CheckBox1.CheckState            = 'UnChecked'

$Groupbox5.Controls.AddRange(@($CheckBox1,$TextBox1))

$Groupbox6                       = New-Object system.Windows.Forms.Groupbox
$Groupbox6.height                = 75
$Groupbox6.width                 = 344
$Groupbox6.text                  = "VM State"
$Groupbox6.location              = New-Object System.Drawing.Point(8,450)
$Groupbox6.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Groupbox6.Anchor = 'Top,Left'
$Groupbox6.AutoSize = 'GrowAndShrink'

$CheckBox2                       = New-Object system.Windows.Forms.CheckBox
$CheckBox2.text                  = "Terminate OS On Shutdown"
$CheckBox2.AutoSize              = $false
$CheckBox2.width                 = 200
$CheckBox2.height                = 20
$CheckBox2.location              = New-Object System.Drawing.Point(5,20)
$CheckBox2.Font                  = 'Microsoft Sans Serif,10'
$CheckBox2.CheckState = 'Checked'
$CheckBox2.Add_CheckStateChanged(
    {
        if($CheckBox2.CheckState -eq 'Checked')
            {
                $RadioButton3.Checked = $true
                $RadioButton3.Enabled = $false
                $RadioButton4.Checked = $false
                $RadioButton4.Enabled = $false
                $RadioButton3.Refresh()
                $RadioButton4.Refresh()
            }

        if($CheckBox2.CheckState -eq 'UnChecked')
            {
                $RadioButton3.Checked = $true
                $RadioButton3.Enabled = $true
                $RadioButton4.Checked = $false
                $RadioButton4.Enabled = $true
                $Checkbox3.Checked = $false
                $Checkbox3.Refresh()
                $RadioButton3.Refresh()
                $RadioButton4.Refresh()
            }
    })
$CheckBox2.CheckState            = 'UnChecked'

$RadioButton3                    = New-Object system.Windows.Forms.RadioButton
$RadioButton3.text               = "Running"
$RadioButton3.AutoSize           = $true
$RadioButton3.width              = 104
$RadioButton3.height             = 20
$RadioButton3.location           = New-Object System.Drawing.Point(5,50)
$RadioButton3.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$RadioButton3.Anchor = 'Top,Left'
$RadioButton3.AutoSize = 'GrowAndShrink'
$RadioButton3.Add_CheckedChanged(
    {
        if($RadioButton3.Checked -eq $true)
            {
            }
    
    })
$RadioButton3.Checked = $true

$RadioButton4                    = New-Object system.Windows.Forms.RadioButton
$RadioButton4.text               = "Not Running"
$RadioButton4.AutoSize           = $true
$RadioButton4.width              = 104
$RadioButton4.height             = 20
$RadioButton4.location           = New-Object System.Drawing.Point(130,50)
$RadioButton4.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$RadioButton4.Anchor = 'Top,Left'
$RadioButton4.AutoSize = 'GrowAndShrink'
$RadioButton4.Add_CheckedChanged(
    {
        if($RadioButton4.Checked -eq $true)
            {
            }
    })

$NumericUpDown3 = New-Object 'System.Windows.Forms.NumericUpDown'
$NumericUpDown3.Minimum = 1
$NumericUpDown3.height                = 50
$NumericUpDown3.width                 = 50
$NumericUpDown3.location              = New-Object System.Drawing.Point(5,115)
$NumericUpDown3.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$NumericUpDown3.Anchor = 'Top,Left'
$NumericUpDown3.AutoSize = 'GrowAndShrink'

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Idle Hours"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(60,120)
$Label2.Font                     = 'Microsoft Sans Serif,10'

$CheckBox3                       = New-Object system.Windows.Forms.CheckBox
$CheckBox3.text                  = "Shutoff VM On Idle"
$CheckBox3.AutoSize              = $false
$CheckBox3.width                 = 200
$CheckBox3.height                = 20
$CheckBox3.location              = New-Object System.Drawing.Point(5,80)
$CheckBox3.Font                  = 'Microsoft Sans Serif,10'
$CheckBox3.CheckState = 'Checked'
$CheckBox3.Add_CheckStateChanged(
    {
        if($CheckBox3.CheckState -eq 'Checked')
            {
                $Checkbox2.Checked = $true
                $Checkbox2.Refresh()
                $NumericUpDown3.Enabled = $true
                $NumericUpDown3.Refresh()
                $Label2.Enabled = $true
                $Label2.Refresh()
            }

        if($CheckBox3.CheckState -eq 'UnChecked')
            {
                $Checkbox2.Checked = $false
                $Checkbox2.Refresh()
                $NumericUpDown3.Enabled = $false
                $NumericUpDown3.Refresh()
                $Label2.Enabled = $false
                $Label2.Refresh()
            }
    })
$CheckBox3.CheckState            = 'UnChecked'
$CheckBox3.Enabled = $false

$Groupbox6.Controls.AddRange(@($Checkbox3,$CheckBox2,$Radiobutton3,$RadioButton4,$NumericUpDown3,$Label2))

$Groupbox7                       = New-Object system.Windows.Forms.Groupbox
$Groupbox7.height                = 75
$Groupbox7.width                 = 344
$Groupbox7.text                  = "User Account"
$Groupbox7.location              = New-Object System.Drawing.Point(8,620)
$Groupbox7.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Groupbox7.Anchor = 'Top,Left'
$Groupbox7.AutoSize = 'GrowAndShrink'

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Enter`nAccount Credentials"
$Button1.width                   = 140
$Button1.height                  = 40
$Button1.location                = New-Object System.Drawing.Point(5,20)
$Button1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Button1.Anchor = 'Top,Bottom,Left,Right'
$Button1.AutoSize = $true
$Button1.AutoSizeMode = 'GrowAndShrink'
$Button1.Add_Click({$global:cred = $Host.UI.PromptForCredential("VDI User Account Information","Enter your desired credentials:",$null,$null)})

$Groupbox7.Controls.AddRange(@($Button1))

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Deploy"
$Button2.width                   = 70
$Button2.height                  = 40
$Button2.location                = New-Object System.Drawing.Point(205,730)
$Button2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',12)
$Button2.Anchor = 'Top,Bottom,Left,Right'
$Button2.AutoSize = $true
$Button2.AutoSizeMode = 'GrowAndShrink'
$Button2.Add_Click({[void]$Form.Close()})

$Form.controls.AddRange(@($Groupbox3,$Groupbox2,$Groupbox1,$Groupbox4,$Groupbox5,$Groupbox6,$GroupBox7,$Button2))





[void]$Form.ShowDialog()

