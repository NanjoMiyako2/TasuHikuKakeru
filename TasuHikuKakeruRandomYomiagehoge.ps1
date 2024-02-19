#テキスト読み上げ用
Add-Type -AssemblyName System.Speech

$ps_speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$ps_speak.SelectVoice("Microsoft Haruka Desktop")

#音声読み上げ用ファイルを読み込み
$arr = Get-Content "C:\hogehoge\hon-yomiage-text\tasu-hiku-kakeru-texts1.txt"
#echo $arr

#読み上げる回数
$speakCount = 30;

for($i=0; $i -lt $speakCount; $i++){

$idx = Get-Random -Maximum ($arr.Length-1) -Minimum 0
$txt1 = $arr[$idx].Split(",");

$ps_speak.Speak($txt1[0])

Start-Sleep -s 3

$ps_speak.speak($txt1[1])


}
