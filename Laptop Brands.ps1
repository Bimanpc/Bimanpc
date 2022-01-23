﻿Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
$window = New-Object System.Windows.Forms.Form
$window.Width = 1000
$window.Height = 800
  $radioButton1 = New-Object System.Windows.Forms.RadioButton
  $radioButton2 = New-Object System.Windows.Forms.RadioButton
  $radioButton3 = New-Object System.Windows.Forms.RadioButton
  $groupBox = New-Object System.Windows.Forms.GroupBox
  $groupBox.Controls.AddRange(
  @(
  $radioButton1,
  $radioButton2,
  $radioButton3
  ))
  $groupBox.Location = New-Object System.Drawing.Point(10, 10)
  $groupBox.Name = 'groupBox'
  $groupBox.Size = New-Object System.Drawing.Size(120, 144)
  $groupBox.Text = 'HP OR DELL OR APPLE WHICH IS THE BEST'
  # radioButton1
  $radioButton1.Location = New-Object System.Drawing.Point(8, 32)
  $radioButton1.Name = 'radioButton1'
  $radioButton1.Text = 'HP'

  # radioButton2
  $radioButton2.Location = New-Object System.Drawing.Point(8, 64)
  $radioButton2.Name = 'radioButton2'
  $radioButton2.Text = 'DELL'
  # radioButton3
  $radioButton3.Location = New-Object System.Drawing.Point(8, 96)
  $radioButton3.Name = 'radioButton3'
  $radioButton3.Text = 'HP'
  $window.Controls.Add($groupBox)
 
$windowButton = New-Object System.Windows.Forms.Button
$windowButton.Location = New-Object System.Drawing.Point(10,170)
$windowButton.Text = "OK"
$windowButton.Add_Click({
foreach ($o in @($radioButton1, $radioButton2, $radioButton3)){
if ($o.Checked){
$option = $o.Text}
}
write-host $option
$window.Dispose()
})
$window.Controls.Add($windowButton)
[void]$window.ShowDialog()
