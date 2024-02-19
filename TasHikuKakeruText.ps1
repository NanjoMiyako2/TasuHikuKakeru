$text1 = ""
$text2 = ""
$text3 = ""

for($i = 1; $i -lt 11; $i++){

    for($j=1; $j -lt 11; $j++){
        $text1 = [string]$i + "たす" + [string]$j + "は"
        #echo $text1
        $text2 = [string]($i+$j);
        #echo $text2

        $text3 = $text1 + "," + $text2
        echo $text3

        $text1 = [string]$i + "ひく" + [string]$j + "は"
        #echo $text1
        $text2 = [string]($i-$j);
        #echo $text2

        $text3 = $text1 + "," + $text2
        echo $text3

        $text1 = [string]$i + "かける" + [string]$j + "は"
        #echo $text1
        $text2 = [string]($i*$j);
        #echo $text2

        $text3 = $text1 + "," + $text2
        echo $text3

    }

}

#テキスト読み上げ用
Add-Type -AssemblyName System.Speech

#$ps_speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
#$ps_speak.SelectVoice("Microsoft Haruka Desktop")
#$ps_speak.Speak("1たす8は")
#$ps_speak.Speak("-5")